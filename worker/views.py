"""Workers module."""

from django.contrib.auth.decorators import login_required
from core.models import ServiceRequest, UserDocuments, Subscription, \
    Reference, EvaluationParameter, Notification, ServiceProvided, \
    ServiceType, ServiceDiscount
from core.constants import *
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from .forms import WorkerSubscriptionForm, StatusServiceResquetForm
from core.forms import PhoneForm
from django.db.models import Q
from core.utils import *
from django.core.mail import send_mail, mail_admins
import logging
import time
from PIL import Image
from PIL import ExifTags
from io import BytesIO
import calendar
from datetime import datetime
from django.core.files.uploadhandler import InMemoryUploadedFile

logger = logging.getLogger(__name__)

def zip_image(img_to_zip):
    img_buffer = BytesIO(img_to_zip.read())
    logger.error(img_buffer.getbuffer().nbytes/1048576)
    img = Image.open(img_buffer)

    for orientation in ExifTags.TAGS.keys() : 
        if ExifTags.TAGS[orientation]=='Orientation' : break 
    
    if img.format != "PNG":
        if img._getexif():
            exif=dict(img._getexif().items())
            if orientation in exif:
                if exif[orientation] == 3:
                    img=img.rotate(180, expand=True)
                elif exif[orientation] == 6: 
                    img=img.rotate(270, expand=True)
                elif exif[orientation] == 8: 
                    img=img.rotate(90, expand=True)
        
    if img.mode != 'RGB':
        img = img.convert('RGB')
    img.thumbnail((img.width/2,img.height/2), Image.ANTIALIAS)
    output = BytesIO()
    img.save(output, format='JPEG', quality=70)
    output.seek(0)

    return InMemoryUploadedFile(output,'ImageField', "img-%s.jpg" %str(datetime.now()), 'image/jpeg', output.getbuffer().nbytes, None)


@login_required
def worker_subscription_form(
  request, template_name='worker/subscription.html'):
    u"""
    Worker subscription.

    View para entrada de informações detalhadas e upload de documentos do
    trabalhador
    """
    if request.user.account_state == Account_States.approved:
        return redirect('core:settings')

    form = WorkerSubscriptionForm(request.POST or None, request.FILES)
    formPhone = PhoneForm(request.POST or None)

    if form.is_valid():
        # Now we have all necessary data, let's create the subscription
        user = request.user
        user.account_state = Account_States.waiting

        documents = UserDocuments()
        documents.person_id = zip_image(request.FILES['id_doc'])
        documents.residence_proof = zip_image(request.FILES['address_proof'])
        documents.cpf = zip_image(request.FILES['cpf_doc'])

        documents.save()

        user.documents = documents

        #for skill in form.cleaned_data['skills']:
        #    user.skills.add(skill)
        
        #user.phone_number = form.cleaned_data['phone']
        phone = formPhone.save(commit=False)
        phone.indico_user = request.user
        phone.number = request.POST['number']
        phone.save()
        user.categories.add(form.cleaned_data['category'])
        user.resume = form.cleaned_data['resume']
        user.is_terms_accepted = form.cleaned_data['accept_tc']
        user.is_application_form_filled = True
        user.account_type = 2
        user.save()

        subscription = Subscription(candidate=user)
        subscription.save()

        subject = get_new_subscription_title(user)
        message = get_new_subscription_body(user, subscription)

        # Send mail to admins
        mail_admins(subject, message, fail_silently=True)

        # Send mail to worker
        send_mail(
           "Peça recomendações", alert_subscription_message(request, user),
           'suporte@indikko.com', [user.email], fail_silently=True)

        messages.add_message(
          request, messages.INFO, "Seu perfil foi enviado com sucesso, em breve um de nossos representantes estará avaliando o seu processo.")
        return redirect('worker:home')

    return render(request, template_name, {'formPhone': formPhone,'form': form})

@login_required
def set_service_status(request):

    logger.error('Terms of POST')
    for terms in request.POST:
        logger.error(terms)
    logger.error('Wait, change state!')
    if request.method == 'POST':
        id = request.POST['id']
        service = get_object_or_404(ServiceRequest, pk=id)
        notification = None
        if '_reject' in request.POST:
            logger.error('Service changed to rejected.')
            service.status = Service_Request_Status.rejected
            notification = Notification.objects.requestRejected(service.owner, "Solicitação cod. " +
                                                                str(service.id) + " foi rejeitada pelo profissional.")
        elif '_negotiate' in request.POST:
            logger.error('Service changed to negotiated.')
            service.status = Service_Request_Status.waiting_feedback
            notification = Notification.objects.info(service.owner, "A Solicitação cod. " +
                                                     str(service.id) + " está sendo avaliada pelo profissional.")
        elif '_accept' in request.POST:
            logger.error('Service changed to accepted.')
            service.status = Service_Request_Status.accepted
            notification = Notification.objects.info(service.owner, "A Solicitação cod. " +
                                                 str(service.id) + " foi aceita pelo profissional.")
        elif '_start' in request.POST:
            logger.error('Service changed to started.')
            service.status = Service_Request_Status.started
            notification = Notification.objects.info(service.owner, "A Solicitação cod. " +
                                                     str(service.id) + " foi iniciada pelo profissional.")
        elif '_done' in request.POST:
            logger.error('Service changed to done.')
            service.status = Service_Request_Status.done
            notification = Notification.objects.info(service.owner, "A Solicitação cod. " +
                                                     str(service.id) + " foi finalizada pelo profissional.")
        if '_cancel' in request.POST:
            service.status = Service_Request_Status.cancelled
            notification = Notification.objects.requestRejected(service.owner, "Solicitação cod. " +
                                                                str(service.id) + " foi cancelada pelo profissional.")
        data = request.POST.copy()
        data['status'] = service.status
        data.pop('id',None)
        form = StatusServiceResquetForm(data or None, instance=service)
        if form.is_valid():
            form.save()
            if (notification is not None):
                notification.save()
                hirer = service.owner
                # Send an alert by email
                send_mail(
                    "[Indikko] Alerta Alteração do Estado do Serviço", alert_service_notification(hirer,service),
                    'suporte@indikko.com', [hirer.email], fail_silently=True)
            return redirect('worker:home')
    else:
        id = request.GET['id']
        service = get_object_or_404(ServiceRequest, pk=id)
        form = StatusServiceResquetForm(instance=service)
    itens = EvaluationParameter.objects.filter(service=service)
    return render(request, 'partials/_service_detailed.html',
        {
            'service': service,
            'form': form,
            'evaitems': itens,
        }
    )



@documents_required
@login_required
def home(request, template_name='worker/home.html'):
    day = int(time.strftime("%d"))
    month = int(time.strftime("%m"))
    year = int(time.strftime("%Y"))
    monthlength = calendar.monthrange(year, month)[1]

    month_open_services = []
    month_pending_services = []
    month_closed_services = []
    month_size =[]
    i = 1
    while i <= int(monthlength):
        month_size.append(i)
        i = i + 1
    for day in month_size:
        month_open_services.append(ServiceRequest.objects.filter(service_provided__worker=request.user)\
            .filter(status=Service_Request_Status.new, date__year=year, date__month=month, date__day=day))
        month_pending_services.append(ServiceRequest.objects.filter(
            service_provided__worker=request.user)\
            .filter(Q(status=Service_Request_Status.accepted) |
                    Q(status=Service_Request_Status.waiting_feedback) |
                    Q(status=Service_Request_Status.started)).filter(date__year=year, date__month=month, date__day=day))
        month_closed_services.append(ServiceRequest.objects.filter(service_provided__worker=request.user)\
            .filter(Q(status=Service_Request_Status.done) |
                    Q(status=Service_Request_Status.rejected) |
                    Q(status=Service_Request_Status.finished)).filter(date__year=year, date__month=month, date__day=day))

    context_data = {
        'day' : day,
        'month_open_services': month_open_services,
        'month_pending_services': month_pending_services,
        'month_closed_services': month_closed_services,
        'user': request.user,
        'status_msg': ACCOUNT_STATES_CHOICES[request.user.account_state][1],
        'is_approved': request.user.account_state == Account_States.approved,
    }

    return render(request, template_name, context_data)

@login_required
def get_day_service(request):
    day = request.GET['day']
    month = request.GET['month']
    year = request.GET['year']

    open_services = ServiceRequest.objects.filter(service_provided__worker=request.user)\
        .filter(status=Service_Request_Status.new, date__year=year, date__month=month, date__day=day)
    pending_services = ServiceRequest.objects.filter(
     service_provided__worker=request.user)\
        .filter(Q(status=Service_Request_Status.accepted) |
                Q(status=Service_Request_Status.waiting_feedback) |
                Q(status=Service_Request_Status.started)).filter(date__year=year, date__month=month, date__day=day)
    closed_services = ServiceRequest.objects.filter(service_provided__worker=request.user)\
        .filter(Q(status=Service_Request_Status.done) |
           Q(status=Service_Request_Status.rejected) |
           Q(status=Service_Request_Status.finished)).filter(date__year=year, date__month=month, date__day=day)

    context_data = {
        'open_services': open_services,
        'closed_services': closed_services,
        'pending_services': pending_services
    }

    return render(request, 'partials/_service_day.html', context_data)

def get_service_table_day(request):
    monthlength = request.GET['monthlength']
    month = request.GET['month']
    year = request.GET['year']

    month_open_services = []
    month_pending_services = []
    month_closed_services = []
    month_size =[]
    i = 1
    while i <= int(monthlength):
        month_size.append(i)
        i = i + 1
    for day in month_size:
        month_open_services.append(ServiceRequest.objects.filter(service_provided__worker=request.user)\
            .filter(status=Service_Request_Status.new, date__year=year, date__month=month, date__day=day))
        month_pending_services.append(ServiceRequest.objects.filter(
            service_provided__worker=request.user)\
            .filter(Q(status=Service_Request_Status.accepted) |
                    Q(status=Service_Request_Status.waiting_feedback) |
                    Q(status=Service_Request_Status.started)).filter(date__year=year, date__month=month, date__day=day))
        month_closed_services.append(ServiceRequest.objects.filter(service_provided__worker=request.user)\
            .filter(Q(status=Service_Request_Status.done) |
                    Q(status=Service_Request_Status.rejected) |
                    Q(status=Service_Request_Status.finished)).filter(date__year=year, date__month=month, date__day=day))

    context_data = {
        'year': year,
        'month': month,
        'monthlength': monthlength,
        'month_open_services': month_open_services,
        'month_pending_services': month_pending_services,
        'month_closed_services': month_closed_services
    }

    return render(request, 'partials/_service_table_day.html', context_data)