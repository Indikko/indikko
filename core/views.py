# -*- coding: utf-8 -*-

from .models import Place, Skill, Notification, IndicoUser, ClicksToShowMore, ServiceProvided, ServiceType, \
                    ServiceDiscount, ServiceCategory, Endorsment, WorkerEvaluation, ServiceRequest, PhoneNumber, WorkZone
from .forms import PlaceForm, ProfilePhotoForm, ServiceProvidedForm, ServiceRequestForm, SkillForm, DomicileForm, OrderForm, PhoneForm, \
                    AvailabilityForm, CategoriesForm
from django.shortcuts import render,redirect,get_object_or_404
from django.http import HttpResponse
from django.db.models import Q
from django import template
from django.contrib.auth.decorators import login_required
from django.core.mail import send_mail
from .constants import *
from core.utils import *
import logging
from twilio.rest import TwilioRestClient 
import random
from django.core.cache import cache
from django.contrib import messages
from functools import reduce
from validate_email import validate_email
import os, sys
from PIL import Image
from PIL import ExifTags
from io import BytesIO
from datetime import datetime
from django.core.files.uploadhandler import InMemoryUploadedFile

import json

register = template.Library()
logger = logging.getLogger(__name__)



@login_required
def address_list(request):
    places = Place.objects.filter (owner = request.user)
    return render (request, 'core/place-list.html', {'places':places})

@login_required
def phone_list(request):
    phones = PhoneNumber.objects.filter (indico_user = request.user)
    return render (request, 'core/phone-list.html', {'phones':phones})

@login_required
def phone_create(request):
    form = PhoneForm(request.POST or None)
    if form.is_valid():
        logger.error("valid")
        phone = form.save(commit=False)
        phone.indico_user = request.user
        phone.number = request.POST['number']
        phone.save()
        return redirect('core:phone-list')
    else:
        logger.error('form invalido')
    return render(request, 'core/phone-edit.html', {'form': form })

@login_required
def phone_update(request, id):
    phone = get_object_or_404 (PhoneNumber, pk=id)
    form = PhoneForm (request.POST or None, instance = phone)

    if form.is_valid():
        form.save()
        return redirect('core:phone-list')
    return render (request, 'core/phone-edit.html', {'form':form})

@login_required
def phone_delete(request, id):
    phone = get_object_or_404(PhoneNumber, pk=id)
    if request.method=='GET':
        phone.delete()

    return redirect('core:phone-list')

@login_required
def address_create(request):
    form = PlaceForm (request.POST or None)
    if form.is_valid():
        place = form.save(commit=False)
        place.zipcode = request.POST['zipcode']
        place.owner = request.user
        place.country = 'Brasil' # Fixed value for country
        place.save()
        return redirect ('core:place-list')
    return render(request, 'core/place-edit.html', {'form':form})

@login_required
def address_update(request, id):
    place = get_object_or_404 (Place, pk=id)
    form = PlaceForm (request.POST or None, instance = place)

    if form.is_valid():
        form.save()
        return redirect('core:place-list')
    return render (request, 'core/place-edit.html', {'form':form})

@login_required
def address_delete(request, id):
    address = get_object_or_404(Place, pk=id)
    if request.method=='GET':
        address.delete()

    return redirect('core:place-list')

@login_required
def skills_from_category (request, id, template_name='partials/_skills.html'):
    skills = Skill.objects.filter (category_id = id)
    user_skills = request.user.skills.all()
    return render (request, template_name, {'user_skills': user_skills, 'skills' : skills})

@login_required
def notifications_list (request):
    """
    Método para chamadas ajax que retorna a lista de alertas mais recentes
    do usuário. Esse método limita a busca em 10 itens.
    """
    logged_user = request.user
    notifications = Notification.objects.filter (to = logged_user).order_by('-pk')[:10]
    data = {
        'notifications' : notifications
    }

    return render (request, 'partials/_user_alerts.html', data)


@login_required
def remove_service_provide(request, id):
    service_provided = get_object_or_404(ServiceProvided, pk=id)
    if request.method == 'GET':
        service_provided.delete()
    return redirect ('/usuario/perfil/#sec-services')

@login_required
def remove_profession(request, id):
    user = request.user
    profession = get_object_or_404(user.categories, pk=id)
    if request.method == 'GET':
        user.categories.remove(profession)
    return redirect ('/usuario/perfil/#sec-select-professional')

@login_required
def remove_workzone(request, id):
    user = request.user
    work_zone = get_object_or_404(user.work_zones, pk=id)
    if request.method == 'GET':
        user.work_zones.remove(work_zone)
    return redirect ('/usuario/perfil/#sec-workzone')




@login_required
def settings(request):

    

    if 'select-neighborhood' in request.POST:
        logger.error(request.POST['select-neighborhood'])
        user = request.user
        user.work_zones.add(request.POST['select-neighborhood'])

        

    if request.method == 'POST':
        user = request.user
        if 'start_monday' in request.POST:
            week_aval = request.POST["start_monday"] + "|" + request.POST["end_monday"] + "|" + \
                    request.POST["start_tuesday"] + "|" + request.POST["end_tuesday"] + "|" + \
                    request.POST["start_wednesday"] + "|" + request.POST["end_wednesday"] + "|" + \
                    request.POST["start_thursday"] + "|" + request.POST["end_thursday"] + "|" + \
                    request.POST["start_friday"] + "|" + request.POST["end_friday"] + "|" + \
                    request.POST["start_saturday"] + "|" + request.POST["end_saturday"] + "|" + \
                    request.POST["start_sunday"] + "|" + request.POST["end_sunday"]
            logger.error(week_aval)
            user.week_availability = week_aval
            user.save()
    
    #from worker
    if request.user.account_state == Account_States.waiting:
        return redirect('worker:home')
    if request.method == 'POST':
        formService = ServiceProvidedForm(data=request.POST)
        if formService.is_valid():
            data = formService.cleaned_data;
            service_provided = ServiceProvided.objects.create(duration=data['duration'], 
                                                                price=data['price'],
                                                                fixed_price=data['fixed_price'],
                                                                service_type=data['service_type'],
                                                                worker=request.user)
            service_provided.save()
            formService = ServiceProvidedForm(worker=request.user)
    formService = ServiceProvidedForm(worker=request.user)

    service_provided_list = ServiceProvided.objects.filter(worker=request.user)
    

    formDomicile = DomicileForm(request.POST)
    if formDomicile.is_valid():
        request.user.attendance_in_domicile = formDomicile.cleaned_data['attendance_in_domicile']
        request.user.costumer_service = formDomicile.cleaned_data['costumer_service']
        request.user.place_to_work = formDomicile.cleaned_data['place_to_work']
        request.user.save()

    availForm = AvailabilityForm()

    formCategories = CategoriesForm(request.POST or None, request.FILES)
    if formCategories.is_valid():
        user = request.user
        user.categories.add(formCategories.cleaned_data['category'])
        user.save()

    formSkill = SkillForm(request.POST or None, request.FILES)
    if formSkill.is_valid():
        user = request.user
        for sk in user.skills.all():
            user.skills.remove(sk)
        for skill in formSkill.cleaned_data['skills']:
            logger.error(skill)
            user.skills.add(skill)
        user.save()

    if request.method == 'POST':
        form = ProfilePhotoForm(request.POST, request.FILES)
        logger.error(form.is_valid())
        if form.is_valid():
            user = request.user
            user.photo = request.FILES['docfile']
            #logger.error(BytesIO(user.photo.read()).getbuffer().nbytes)
            img_buffer = BytesIO(user.photo.read())
            if (img_buffer.getbuffer().nbytes/1048576) > 1:
                logger.error(img_buffer.getbuffer().nbytes/1048576)
                img = Image.open(img_buffer)

                for orientation in ExifTags.TAGS.keys() :
                    logger.error("Break: " + ExifTags.TAGS[orientation])
                    logger.error("Break: " + str(orientation))
                    if ExifTags.TAGS[orientation]=="Orientation": break 
                logger.error(img.format)
                if img.format != "PNG":
                    exif=dict(img._getexif().items())
                    if orientation in exif:
                        if exif[orientation] == 3:
                            logger.error("Unable to rotate on orientation 3")
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
                user.photo = InMemoryUploadedFile(output,'ImageField', "img-%s.jpg" %str(datetime.now()), 'image/jpeg', output.getbuffer().nbytes, None)
            user.save()
    else:
        form = ProfilePhotoForm()
    places = Place.objects.filter (owner = request.user)
    phones = PhoneNumber.objects.filter(indico_user = request.user)
    notifications = Notification.objects.filter (to = request.user).order_by('-pk')[:10]
    has_notification = False
    for n in notifications:
        if n.level == 5:
            has_notification = True
        #if n.level == Notification_Levels.new
        #    
    workneighborhoods = {}
    workzones = set()
    workzonesid = {}
    for z in WorkZone.objects.all():
        workzones.add(z.zone)
        workneighborhoods[z.neighborhood] = z.zone
        workzonesid[z.neighborhood] = z.id

    categoriesSet = set()
    user = request.user

    user_work_zone = user.work_zones.all()
    for u in user.categories.all():
        categoriesSet.add((u.description, u.id))
    user_skills = user.skills.all()
    return render(request, 'core/settings.html', {'user': request.user, 'user_work_zone': user_work_zone, 'workzonesid':workzonesid, 'workneighborhoods':workneighborhoods, 'workzones':workzones, 'user_skills':user_skills, 'availForm': availForm, 'categoriesSet':categoriesSet, 'form': form, 'formService': formService,\
     'places': places, 'phones' : phones, 'hasNotification': has_notification, 'service_provided_list': service_provided_list, \
     'formCategories': formCategories, 'formSkill': formSkill, 'formDomicile':formDomicile})

def phone_split(x, format=[2,5,4]):
  parts = []
  reduce(lambda x, y: parts.append(x[:y]) or x[y:], format, x)
  phone = '(' + parts[0] + ')' + parts[1] + '-' + parts[2]
  return phone

@login_required
def get_phone_ajax(request):
    hirer = request.user
    worker_id = request.GET['id']
    worker = IndicoUser.objects.get(pk=worker_id)
    phone_number = phone_split(worker.phone_number)
    ctsm = ClicksToShowMore()
    ctsm.hirer  = hirer
    ctsm.worker = worker
    ctsm.save()
    if phone_number:
        return HttpResponse(phone_number)
    else:
        return HttpResponse('FAIL')


@login_required
def rank_worker_ajax(request):
    hirer = request.user
    worker_id = request.GET['id']
    worker = IndicoUser.objects.get(pk=worker_id)
    worker_already_ranked_byhirer = True
    if not worker_already_ranked_byhirer:
        return HttpResponse('ok')
    else:
        return HttpResponse('FAIL')

@login_required
def home(request):
    """
    Acesso a home 
    """
    all_categories = ServiceCategory.objects.filter(is_active=True)
    if request.user.account_state == Account_States.waiting:
        return redirect('worker:home')

    categories = ServiceCategory.get_active_categories()

    if not categories:
        return render (request, 'core/home.html', {'groups':None})

    groups = dict()
    for category in categories:
        if category.group in groups:
            groups[category.group].append(category)
        else:
            groups[category.group] = [category]

    return render (request, 'core/home.html', {'all_categories': all_categories,'groups':groups})



def professionals(request, category, template_name='core/professionals.html'):
    """
    Atualmente esse método renderiza um lista aleatória de trabalhadores
    cadastrados no sistema.
    """

    cat = ServiceCategory.objects.get(pk=category)
    skills = cat.skill_set.all()
    workers = IndicoUser.objects.professionals_by_category(cat)
    neighborhoods = []
    all_evaluations = []
    logger.error('Category ' + str(cat) + ' has ' + str(workers.count()) + ' workers.')
    all_evaluations = WorkerEvaluation.objects.all()

    evaluation_dict = {}
    for evaluation in all_evaluations:
        logger.error('Worker ' + evaluation.worker.first_name)
        if evaluation.worker.first_name in evaluation_dict:
            evaluation_dict[evaluation.worker.first_name] = evaluation_dict[evaluation.worker.first_name] + 1
        else:
            evaluation_dict[evaluation.worker.first_name] = 1
    
    for e in evaluation_dict:
        logger.error(e + ' = ' + str(evaluation_dict[e]))

    for w in workers:
        places = Place.objects.filter(owner=w)
        if places:
            for p in places:
                nh = p.neighborhood
                if not nh in neighborhoods:
                    neighborhoods.append(nh)
    user = request.user
    if not user.is_anonymous():
        notifications = Notification.objects.filter (to = request.user).order_by('-pk')[:10]
        has_notification = False
        for n in notifications:
            if n.level == 5:
                has_notification = True

    count = 0

    data = {
        "user" : user,
        "category" : cat.id,
        "categoryname": cat.description,
        "skills":skills,
        "neighborhoods":sorted(neighborhoods),
        "all_evaluations":all_evaluations,
        "evaluation_dict":evaluation_dict,
        "count": count,

    }
    return render (request, template_name, data)

def professional_details(
 request, id, template_name='core/professional-details.html'):
    worker = IndicoUser.objects.get(pk=id)
    user = request.user
    recomendacoes = Endorsment.friends_that_recommends(request.user, worker)
    evaluations = WorkerEvaluation.objects.filter(worker=worker)
    categoriesSet = set()
    serviceProvided = worker.get_serviceprovided()
    places = Place.objects.filter (owner = worker)
    skills = []
    worker.rate = float("{0:.2f}".format(worker.rate))
    worker.save()
    for w in worker.skills.all():
        categoriesSet.add(w.category)
        skills.append(w.description)
    return render(
     request, template_name,
     {'worker': worker, 'skills':skills,'user':user, 'recomendacoes': recomendacoes, 'servicepro' : serviceProvided,
      'evaluations': evaluations, 'categoriesSet': categoriesSet, 'places': places})

@login_required
def full_schedule(request, template_name='core/full-schedule.html'):
    context_data = {
        'user': request.user,
    }

    return render(request, template_name, context_data)

@login_required
def service_request_create (request, service_provided, template_name="core/servicerequest-create.html"):
    """
    Cria novas requisições de serviço
    """
    logger.error(request.method)
    if request.method == 'POST':
        for terms in request.POST:
            logger.error(terms)

    service_provided = ServiceProvided.objects.get(id = service_provided)

    worker = IndicoUser.objects.get(id = service_provided.worker.id)
    if request.method == 'POST':
        form = ServiceRequestForm(data =request.POST)
        if form.is_valid():
            new_service_request = form.save()
            request.user.phone_number = form.cleaned_data['phone_number']
            request.user.save()

            notification = Notification.objects.newRequest(service_provided.worker,"Nova solicitação de serviço cod. " + str(new_service_request.id))
            notification.save()

            is_valid_email = validate_email(service_provided.worker.email)
            if is_valid_email:
                #Send an alert by email
                send_mail("[Indikko] Alerta de Novo Serviço", alert_new_service_notification(request.user, service_provided.worker, new_service_request),
                'suporte@indikko.com', [service_provided.worker.email], fail_silently=True)
            else:
                logger.error("This user use phone has login.")
            return redirect('core:home')
        else:
            form.fields['address'].queryset = Place.objects.filter (owner = request.user)
            print ('formulario invalido!!!')
            print (form.errors)
    else:
        data = {'owner': request.user.id,
                'worker': worker,
                'professional': service_provided.worker.id,
                'category':service_provided.service_type.service_category.id,
                'price': service_provided.price,
                'phone_number': request.user.phone_number,
                'service_provided': service_provided
            }

        form = ServiceRequestForm(owner = request.user, initial=data)

    service_category = ServiceCategory.objects.get(pk = service_provided.service_type.service_category.id)
    form_data = {
        'form': form,
        'p' : IndicoUser.objects.get(pk=service_provided.worker.id),
        'worker': worker,
        'sp': service_provided
    }

    return render (request, template_name, form_data)

def set_status_we_ajax(request):
    try:
        id = request.POST['id']
        status = request.POST['status']
        we = WorkerEvaluation.objects.get(pk=int(id))
        we.status=status
        we.save()
        return HttpResponse('ok')
    except WorkerEvaluation.DoesNotExist as e:
        return HttpResponse(e)

@login_required
def get_day_service(request):
    day = request.GET['day']
    month = request.GET['month']
    year = request.GET['year']

    open_services = ServiceRequest.objects.filter(owner=request.user)\
        .filter(status=Service_Request_Status.new, date__year=year, date__month=month, date__day=day)
    pending_services = ServiceRequest.objects.filter(
     owner=request.user)\
        .filter(Q(status=Service_Request_Status.accepted) |
                Q(status=Service_Request_Status.waiting_feedback) |
                Q(status=Service_Request_Status.started) |
                Q(status=Service_Request_Status.done)).filter(date__year=year, date__month=month, date__day=day)
    closed_services = ServiceRequest.objects.filter(owner=request.user)\
        .filter(
           Q(status=Service_Request_Status.rejected) |
           Q(status=Service_Request_Status.finished)).filter(date__year=year, date__month=month, date__day=day)

    context_data = {
        'open_services': open_services,
        'closed_services': closed_services,
        'pending_services': pending_services
    }

    return render(request, 'partials/_hirer_service_day.html', context_data)


def _get_pin(length=5):
    """ Apresenta o PIN para vadilação via SMS  """
    return random.sample(range(10**(length-1), 10**length), 1)[0]

def _verify_pin(mobile_number, pin):
    return pin == cache.get(mobile_number)

def send_pin_ajax(request):
    """ Envio de SMS via ajax """
    logger.error('Ajax called')
    TWILIO_ACCOUNT_SID = "AC862391a8a3bdf74f109b190744553c02"
    TWILIO_AUTH_TOKEN = "5f16cf598adde267c2cb6855807e3341"
    TWILIO_NUMBER = "+13474620272"
    mobile_number = request.GET.get('mobile_number', "")
    if not mobile_number:
        return HttpResponse("No mobile number", content_type='text/plain', status=404)

    pin = _get_pin()
    logger.error('+55'+mobile_number)
    cache.set(mobile_number, pin, 24*3600) # this time is for 24hours.
    
    client = TwilioRestClient(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
    message = client.messages.create(
        body="%s" % pin,
        to='+55' + mobile_number,
        from_=TWILIO_NUMBER,
        )
    logger.error(message.sid)
    return HttpResponse("Mensagem %s enviada." % message.sid, content_type='text/plain', status=200)

def sms_validation(request):
    form = OrderForm(request.POST or None)

    if form.is_valid():
        pin = int(request.POST.get("pin", "0"))
        mobile_number = request.POST.get("mobile_number", "")
        logger.error('Pin: ' + request.POST.get("pin", "0") + ' Phone: ' + mobile_number)
        if _verify_pin(mobile_number, pin):
            logger.error(request.user.first_name)
            user = request.user
            user.account_state = Account_States.approved
            user.phone_number = mobile_number

            user.save()
            return redirect('core:home')
    
    return render(
            request,
            'core/sms-validation.html',
            {
                'form': form
            }
        )


def thanks_evaluation(request, template_name='core/thanks_evaluation.html'):
    user = request.user;

    data = {
        "user" : user,
    }
    return render (request, template_name, data)