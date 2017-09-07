# -*- coding: utf-8 -*-
from django.db import models
from django.utils import timezone
from django.utils.translation import ugettext_lazy as _
from django.contrib.auth.models import (
    BaseUserManager, AbstractBaseUser, PermissionsMixin
)
from django.core.mail import send_mail
from app.constants import *
import logging

logger = logging.getLogger(__name__)

class IndicoUserManager(BaseUserManager):
    def _create_user(self, email, password,
                     is_staff, is_superuser, **extra_fields):
        """
        Creates and saves a User with the given email and password.
        """
        logger.error("Models-app: " + email)
        now = timezone.now()
        if not email:
            email = self.normalize_email(email)
            raise ValueError('The given email must be set')

        user = self.model(email=email,
                          is_staff=is_staff, is_active=True,
                          is_superuser=is_superuser, last_login=now,
                          date_joined=now, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_user(self, email, password=None, **extra_fields):
        return self._create_user(email, password, False, False,
                                 **extra_fields)

    def create_user(self, email=None, password=None, **extra_fields):
        """
        This override is necessary to Python Social Auth plugin works. This method
        just receive username and after ignore it.
        """
        return self._create_user(email, password, False, False,
                               **extra_fields)

    def create_user(self, username, email=None, password=None, **extra_fields):
        """
        This override is necessary to Python Social Auth plugin works. This method
        just receive username and after ignore it.
        """
        logger.error("_create_user username: " + username)
        return self._create_user(email, password, False, False,
                               **extra_fields)

    def create_superuser(self, email, password, **extra_fields):
        return self._create_user(email, password, True, True,
                                 **extra_fields)

    def create_worker_user (self, email, password, **extra_fields):
        user = self._create_user(email, password, False, False,
                               **extra_fields)
        user.account_type = User_Types.worker
        user.save()
        return user

    def create_contractor_user (self, email, password, **extra_fields):
        user = self._create_user(email, password, False, False,
                               **extra_fields)
        user.account_type = User_Types.contractor
        user.save()
        return user

    def avaliable_workers (self, **kwargs):
        """
        Do ponto de vista do sistema e viabilidade, um trabalhador disponível
        é aquele que possui a conta de acesso ao sistema aprovada pela adminis-
        tração.
        """
        # TODO: Order_by (?) can lead poor database performance
        return self.filter(account_type=User_Types.worker).\
                    filter (account_state=Account_States.approved).order_by('?')

    def professionals_by_category (self, category = None):
        query = self.filter(account_type=User_Types.worker).\
                    filter (account_state=Account_States.approved)

        if category != None:
            query = query.filter (categories=category)

        return query.order_by('id')

    def get_active_worker_details (self, _id):
        return self.filter(account_type=User_Types.worker).filter (account_state=Account_States.approved).filter (pk = _id)


class ServiceProvided(models.Model):
    duration = models.IntegerField(default=0)#in minutes
    price = models.DecimalField(max_digits=6, decimal_places=2,default=0, blank=False, null=False)
    fixed_price = models.BooleanField(default=True)

    service_type = models.ForeignKey(
        ServiceType,
        verbose_name=u'Serviço',
        blank=False, 
        null=False)
    worker = models.ForeignKey(IndicoUser, 
        verbose_name=u'Profissional',
        blank=False, 
        null=False)

    def __str__(self):
        return '%s - %s'%(self.worker,self.service_type)

    class Meta:
        verbose_name = u'Serviço'
        verbose_name_plural = u'Serviços'

class ServiceCategory(models.Model):
    """
    The categories are used inside the system to represent the diferent professions
    supported by the system.
    """
    description = models.CharField(
        u'descrição',
        max_length=100)
    image = models.FileField(
        u'imagem',
        upload_to='cat/%Y/%m/%d/', blank=True, null=True)
    is_active = models.BooleanField(u'ativo?', default=False)
    group = models.ForeignKey(
        GroupServiceCategory, 
        verbose_name=u'grupo',
        blank=True, 
        null=True)

    @classmethod
    def create (cls, description):
        category = cls(description = description)
        category.save()
        return category

    @classmethod
    def get_active_categories(cls):
        """
        Retorna todas as mensagens de um determinado serviço. Esse método é útil
        quando o usuário acessa um novo cliente (browser ou smartphone) e necessita
        atualizar a thread de conversa do serviço no dispositivo
        """
        q = ServiceCategory.objects.filter (is_active = True)
        return q

    def __str__(self):
        return self.description

    class Meta:
        verbose_name = u'Profissão'
        verbose_name_plural = u'Profissões'

class Skill (models.Model):
    description = models.CharField(max_length=100)
    category = models.ForeignKey(ServiceCategory)

    def __str__(self):
        return self.description

    @classmethod
    def create (cls, description, category):
        skill = cls(description = description, category = category)
        skill.save()
        return skill

class UserDocuments (models.Model):
    person_id = models.FileField(upload_to='doc/%Y/%m/%d/', blank=True, null=True)
    residence_proof = models.FileField(upload_to='doc/%Y/%m/%d/', blank=True, null=True)
    cpf = models.FileField(upload_to='doc/%Y/%m/%d/', blank=True, null=True)

class WorkZone(models.Model):
    zone = models.CharField(_('zone of neighborhood'), max_length=80)
    neighborhood = models.CharField(_('neighborhood'), max_length=100)
    state = models.CharField(_('location state'), max_length=100)
    city = models.CharField(_('location city'), max_length=100)


class IndicoUser(AbstractBaseUser, PermissionsMixin):

    # Customized permissions, to implement restricted page access on the system.
    class Meta:
        permissions = (("worker_pass", "Can access as a worker"),
        ("contractor_pass", "Can access as a contractor"))

    # Unique account identifier & Account info
    email = models.CharField(verbose_name='email address', max_length=255, unique=True,)
    date_joined = models.DateTimeField(_('date joined'), default=timezone.now)
    is_staff = models.BooleanField(_('staff status'), default=False, help_text=_('Designates whether the user can log into this admin site.'))
    is_active = models.BooleanField(_('active'), default=True, help_text=_('Designates whether this user should be treated as active. Unselect this instead of deleting accounts.'))
    is_admin = models.BooleanField(default=False)
    attendance_in_domicile = models.BooleanField(default=True)
    costumer_service = models.BooleanField(default=False)
    place_to_work = models.CharField(_('place to work'), max_length=200, blank=True)

    # Personal info
    first_name = models.CharField(_('first name'), max_length=30, blank=True)
    last_name = models.CharField(_('last name'), max_length=30, blank=True)
    date_of_birth = models.DateField(default=None, blank=True, null=True)
    profile_picture = models.TextField()
    photo = models.FileField(upload_to='profile/%Y/%m/%d/', blank=True, null=True)

    # Account info
    account_type = models.IntegerField(choices=USER_TYPE_CHOICES, default=None, blank=True, null=True)
    account_state = models.IntegerField(choices=ACCOUNT_STATES_CHOICES, default=Account_States.new)
    is_terms_accepted = models.BooleanField(default=False)

    # Worker only account info
    resume = models.TextField(default=None, blank=True, null=True)
    rate = models.FloatField(default=0.0, blank=True, null=True)
    endorsements = models.IntegerField(default=0, blank=True, null=True)
    phone_number = models.CharField(max_length=20, default=None, blank=True, null=True)
    documents = models.OneToOneField (UserDocuments,default=None, blank=True, null=True,on_delete=models.SET_NULL)
    categories = models.ManyToManyField(ServiceCategory,default=None, blank=True)
    skills = models.ManyToManyField (Skill,default=None, blank=True)
    work_zones = models.ManyToManyField(WorkZone, default=None, blank=True)
    price = models.DecimalField(max_digits=6, decimal_places=2,default=None, blank=True, null=True)
    is_application_form_filled = models.BooleanField(default=False)

    objects = IndicoUserManager()

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []

    def get_full_name(self):
        full_name = '%s %s' % (self.first_name, self.last_name)
        return full_name.strip()

    def get_short_name(self):
        "Returns the short name for the user."
        return self.first_name

    def __str__(self):              # __unicode__ on Python 2
        return self.email

    def has_module_perms(self, app_label):
        "Does the user have permissions to view the app `app_label`?"
        # Simplest possible answer: Yes, always
        return True

    def email_user(self, subject, message, from_email=None):
        """
        Sends an email to this User.
        """
        send_mail(subject, message, from_email, [self.email])

    def is_worker(self):
        return self.account_type == User_Types.worker

    def is_contractor(self):
        return self.account_type == User_Types.contractor

class PhoneNumber(models.Model):
    number = models.CharField(
        max_length=20, default=None, blank=True, null=True)
    owner = models.ForeignKey(IndicoUser,related_name='phones')
    
    class Meta:
        verbose_name = u'Número de telefone'
        verbose_name_plural = u'Números de telefone'

class EvaluationTemplate(models.Model):
    name = models.CharField(max_length=100, unique=True)
    category = models.OneToOneField(ServiceCategory,default=None, blank=True, null=True,  related_name='template_category')
    created = models.DateTimeField(max_length=10, auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

class EvaluationTemplateItem (models.Model):
    evaluation_template = models.ForeignKey(EvaluationTemplate, related_name='template_items')
    description = models.CharField(max_length=30)
    min_value = models.IntegerField(default=0)
    max_value = models.IntegerField(default=0)

    def __str__(self):
        return self.description

    def html (self):
        """
        Retorna o html que representa o select do template item.
        Nota: <select> é o único widget suportado no momento pelo indico
        """

        # O id do template será usado posteriormente pela view para identificar
        # o template item utilizado para compor o questionário
        htmlStr = "<select name='p_{0}'>".format(self.id)
        for i in range (self.min_value, self.max_value + 1):
            htmlStr += "<option value='{0}'>{0}</option>".format(i)
        htmlStr += "</select>"
        return htmlStr

class Place (models.Model):
    """
    The places class represents a user localization containing phisycal address info
    and geographic coordinates.
    """
    owner = models.ForeignKey(IndicoUser,related_name='places')

    label = models.CharField(max_length=255)

    street = models.CharField(max_length=100)
    number = models.CharField(max_length=10, default=None, blank=True, null=True)
    complement = models.CharField(max_length=255, default=None, blank=True, null=True)
    neighborhood = models.CharField(max_length=100)
    city = models.CharField(max_length=80)
    state = models.CharField(choices=BRASIL_FEDERATIONS, max_length=80)
    country = models.CharField(max_length=80,default=None, blank=True, null=True)
    zipcode = models.CharField(max_length=15,default=None, blank=True, null=True)

    latitude = models.DecimalField(max_digits=9, decimal_places=6, default=None, blank=True, null=True)
    longitude = models.DecimalField(max_digits=9, decimal_places=6, default=None, blank=True, null=True)

    def full_address(self):
        return "{0}, {1}, {2}, {3}, {4}-{5}".format (self.street,self.number,self.complement,self.neighborhood,self.city,self.state)

    def neighborhood_and_city(self):
        return "{0}, {1}-{2}".format(self.neighborhood,self.city,self.state)

    @classmethod
    def create (cls, owner, label, street, neighborhood,city,state,country):
        place = cls (owner = owner, label=label,street=street,neighborhood=neighborhood,city=city,state=state,country=country)
        place.save()
        return place

    def __str__(self):
        return self.label

class ServiceRequest(models.Model):
    """
    Objeto que armazena a solicitação de serviço.
    """
    owner = models.ForeignKey(IndicoUser, related_name='owner')
    address = models.ForeignKey(Place, default=None, blank=True, null=True, related_name='places')
    date = models.DateField()
    time = models.TimeField()
    payment_preference = models.IntegerField(choices=PAYMENT_PREFERENCE_CHOICES)
    status = models.IntegerField (choices = SERVICE_REQUEST_STATUS_CHOICES, default=Service_Request_Status.new)
    service_provided = models.ForeignKey(ServiceProvided, blank=True, null=True)
    created = models.DateTimeField(max_length=10, auto_now_add=True)
    price = models.DecimalField(max_digits=6, decimal_places=2,default=0.0, blank=True, null=True)
    more_info = models.TextField(default=None, blank=True, null=True)
    updated = models.DateTimeField(auto_now=True)

    @classmethod
    def create (cls, owner, professional,
                category, date, time, payment_preference = 1, status = 0, place = None, price = 0.0, more_info = None):
        srequest = cls(owner = owner, professional=professional, category=category,
                        date=date, time=time, payment_preference=payment_preference, status=status, price=price,
                       more_info=more_info)
        srequest.save()
        return srequest

    class Meta:
        verbose_name = u'Solicitação de Serviço'
        verbose_name_plural = u'Solicitações de Serviço'

class EvaluationParameter (models.Model):
    """
    Os parametros variam de acordo com a atividade exercida.
    Ex: Os parametros para uma diarista avaliar o valor de seu serviço pode ser,
    o nr. de quartos, banheiros e habitantes da casa. Enquanto que para um pintor
    os dados relevantes são, total de área construída e altura da casa.

    A lista de parâmetro de avaliação é 'anexada' junto ao ServiceRequest, os
    parametros são definidos no momento da criação de uma solicitação de acordo
    com o EvaluationTemplate associado a categoria selecionada.
    """
    service = models.ForeignKey(ServiceRequest,related_name='evaitems')
    description = models.CharField(max_length=30)
    value = models.IntegerField(default=0)

    def __str__(self):
        return self.description

    @classmethod
    def create (cls, description, value, service):
        evaluation_paramenter = cls(description = description, value=value,service=service)
        evaluation_paramenter.save()
        return evaluation_paramenter

class NotificationManager(models.Manager):
    def create_notification(self, to, message, is_read, level):
        notification = self.create (to = to, message = message,
                                    is_read = is_read, level = level)
        return notification

    def info (self, to, message):
        return self.create_notification (to, message, false, Notification_Levels.info)

    def success (self, to, message):
        return self.create_notification (to, message, false, Notification_Levels.success)

    def warning (self, to, message):
        return self.create_notification (to, message, false, Notification_Levels.warning)

    def danger (self, to, message):
        return self.create_notification (to, message, false, Notification_Levels.danger)

class Notification (models.Model):
    """
    Os Notifications tem o objetivo de rastrear ações específicas dos usuários
    bem como tornar o sistema mais transparente para as duas partes envolvidas,
    trabalhadores e contratantes.
    """
    to = models.ForeignKey(IndicoUser, related_name='notifications')
    message = models.CharField(max_length=255)
    is_read = models.BooleanField( default=False)
    level = models.IntegerField (choices=NOTIFICATION_LEVEL_CHOICES, default=Notification_Levels.info)

    objects = NotificationManager()

    def __str__(self):
        return self.message

class ServiceMessage (models.Model):
    """
    Service message é o a entidade responsável por permitir a troca de mensa-
    gens entre quem quer contratar e quem quer trabalhar durante uma negociação
    de preços de um serviço. Se assemelha muito a uma mensagem de chat mas não
    possui características de troca em tempo real e identificadores necessários
    para o uso de web sockets.
    """
    service = models.ForeignKey(ServiceRequest, related_name='servmessages')
    message = models.CharField(max_length=255)
    sender = models.ForeignKey(IndicoUser, related_name='sender')
    destinatary = models.ForeignKey(IndicoUser, related_name='destinatary')
    is_new = models.BooleanField(default=True)
    created = models.DateTimeField(max_length=10, auto_now_add=True)

    @classmethod
    def create (cls, service, message, sender, destinatary):
        message = cls(service = service,
                message = message, sender = sender, destinatary = destinatary)
        message.save()

    @classmethod
    def get_service_messages (cls, service):
        """
        Retorna todas as mensagens de um determinado serviço. Esse método é útil
        quando o usuário acessa um novo cliente (browser ou smartphone) e necessita
        atualizar a thread de conversa do serviço no dispositivo
        """
        q = ServiceMessage.objects.filter (service = service).order_by('-pk')
        return q

    @classmethod
    def get_service_messages (cls, service, destinatary):
        """
        Recupera a thread de mensagens de determinado RequestService. Ideal quando
        se necessita apenas baixar as novas mensagens.
        """
        q = ServiceMessage.objects.filter (service = service).filter (is_new = True).order_by('-pk')

        for msg in q:
            msg.is_new = False;
            msg.save()

        return q

    @classmethod
    def get_last_message (cls, service):
        """
        Retorna apenas a última mensagem da thread
        """
        q = ServiceMessage.objects.filter (service = service).order_by('-pk')
        return q.first()

class Subscription (models.Model):
    candidate = models.OneToOneField(IndicoUser);

class Reference (models.Model):
    name = models.CharField(max_length=100)
    phone_number = models.CharField(max_length=20)
    subscription = models.ForeignKey(Subscription, related_name='references')

    @classmethod
    def create (cls, name, phone_number, subscription):
        reference = cls(name = name, phone_number = phone_number, subscription=subscription)
        reference.save()
        return reference
