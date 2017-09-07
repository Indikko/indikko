# -*- coding: utf-8 -*-
from django.contrib.auth.decorators import login_required
from core.models import (ServiceCategory, IndicoUser, EvaluationTemplate, EvaluationTemplateItem,
                         ServiceRequest, EvaluationParameter, Notification, Endorsment, WorkerEvaluation,
                         WorkerEvaluationItem,Place, ServiceProvided)

from django.shortcuts import render, redirect, get_object_or_404
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse

from .forms import ServiceRequestForm
from .forms import EvaluationForm
from .forms import SearchWorkerForm
from .forms import EvaluationProfessionalForm
from core.utils import get_encoded_id
from django.db.models import Q
from core.constants import *
from django.core.mail import send_mail
from core.utils import *

@login_required
#@permission_required(['app.contractor_pass'], raise_exception= True)
def home(request):
    """
    Acesso a home de clientes
    """
    categories = ServiceCategory.get_active_categories()

    if not categories:
        return render (request, 'hirer/home.html', {'groups':None})

    groups = dict()
    for category in categories:
        if category.group in groups:
            groups[category.group].append(category)
        else:
            groups[category.group] = [category]

    return render (request, 'hirer/home.html', {'groups':groups})

class WorkerDTO:
    def __init__(self, **kwargs):
        self.__dict__ = kwargs

@login_required
def professionals(request, category, template_name='hirer/professionals.html'):
    """
    Atualmente esse método renderiza um lista aleatória de trabalhadores
    cadastrados no sistema.
    """
    cat = ServiceCategory.objects.get(pk=category)
    skills = cat.skill_set.all()
    workers = IndicoUser.objects.professionals_by_category(cat)
    neighborhoods = []
    for w in workers:
        places = Place.objects.filter(owner=w)
        if places:
            for p in places:
                nh = p.neighborhood
                if not nh in neighborhoods:
                    neighborhoods.append(nh)

    data = {
        "category" : cat.id,
        "categoryname": cat.description,
        "skills":skills,
        "neighborhoods":sorted(neighborhoods),
    }

    return render (request, template_name, data)

@login_required
def friends_recommendations (request, worker,template_name='partials/_hirer_friends.html'):
    queryset = Endorsment.friends_that_recommends(request.user, worker)
    total = queryset.count()
    friends = queryset[:4]

    data = {
        'total':total,
        'friends':friends
    }

    return render (request, template_name, data)

@login_required
def service_request_create (request, service_provided, template_name="hirer/servicerequest-create.html"):
    """
    Cria novas requisições de serviço
    """
    service_provided = ServiceProvided.objects.get(id = service_provided)

    #worker = IndicoUser.objects.get(id = professional)
    if request.method == 'POST':
        form = ServiceRequestForm(data =request.POST)
        if form.is_valid():
            new_service_request = form.save()
            request.user.phone_number = form.cleaned_data['phone_number']
            request.user.save()

            notification = Notification.objects.newRequest(service_provided.worker,"Nova solicitação de serviço cod. " + str(new_service_request.id))
            notification.save()

            #Send an alert by email
            send_mail(
                "[Indikko] Alerta de Novo Serviço", alert_new_service_notification(request.user, service_provided.worker, new_service_request),
                'suporte@indikko.com', [service_provided.worker.email], fail_silently=True)
            return redirect('hirer:home')
        else:
            form.fields['address'].queryset = Place.objects.filter (owner = request.user)
            print ('formulario invalido!!!')
            print (form.errors)
    else:
        data = {'owner': request.user.id,
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
        'sp': service_provided
    }

    return render (request, template_name, form_data)

@login_required
def full_schedule(request, template_name='hirer/full-schedule.html'):
    context_data = {
        'user': request.user,
    }

    return render(request, template_name, context_data)


def evaluate_worker(request):

    if request.method == 'POST':
        form = EvaluationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('hirer:home')
    else:
        id = request.GET['id']
        service = get_object_or_404(ServiceRequest, pk=id)
        params = {'service': service, 'hirer': service.owner, 'worker': service.service_provided.worker, 'indicate': True}

        try:
            evaluation = WorkerEvaluation.objects.get(hirer = service.owner, worker = service.service_provided.worker)
            items = evaluation.core_worker_evaluation.all()
            for item in items:
                if item.item is Worker_Evaluation_items.punctuality:
                    params['punctuality'] = item.value
                elif item.item is Worker_Evaluation_items.quality:
                    params['quality']= item.value
                elif item.item is Worker_Evaluation_items.trust:
                    params['trust'] = item.value
                elif item.item is Worker_Evaluation_items.cost_benefit:
                    params['cost_benefit'] = item.value
        except WorkerEvaluation.DoesNotExist:
            init_value = 3
            params['punctuality'] = init_value
            params['quality'] = init_value
            params['trust'] = init_value
            params['cost_benefit'] = init_value
        form = EvaluationForm(initial=params)
        params = {'service': service, 'form': form}
        return render(request, 'partials/_evaluate_worker.html', params)


@login_required
def evaluate_service(request, id):
    """
    Evaluate the worker and finish the service.

    This method is called via ajax by schedule to finalize a job and evaluate
    in general the worker. Receive the service id as 'id' parameter.
    """
    service = get_object_or_404(ServiceRequest, pk=id)
    worker = service.service_provided.worker
    if request.method == 'GET':
        # Checks if already exists some recommendation from current logged user
        # to evaluated professional.
        if (WorkerEvaluation.objects.filter(hirer=request.user, worker=worker).exists()):
            # return form with current evaluation
            evaluation = WorkerEvaluation.objects.get(hirer=request.user, worker=worker)
            form = EvaluationProfessionalForm(instance=evaluation)
        else:
            form = EvaluationProfessionalForm()

    elif request.method == 'POST':
        evaluation = None
        if WorkerEvaluation.objects.filter(hirer=request.user, worker=worker).exists():
            evaluation = WorkerEvaluation.objects.get(hirer=request.user, worker=worker)

        form = EvaluationProfessionalForm(request.POST or None, instance=evaluation)
        print(form.data)

        if form.is_valid():
            we = form.save(commit=False)
            we.hirer = request.user
            we.worker = worker
            we.status = 'A'
            we.save()

            if we.recommend:
                Endorsment.apply(we.hirer, we.worker)
            else:
                Endorsment.remove(we.hirer, we.worker)

            service.status = Service_Request_Status.finished
            service.save()
            notification = Notification.objects.requestRejected(
                service.service_provided.worker, "NOVA AVALIAÇÃO: " +
                service.owner.get_full_name() + " avaliou seu perfil.")
            notification.save()
            # Send new evaluation alert by email
            send_mail(
                "[Indikko] Alerta de Nova Avaliação", alert_worker_evaluated(we.hirer, we.worker),
                'suporte@indikko.com', [we.worker.email], fail_silently=True)
            # Send service changed alert by email
            send_mail(
                "[Indikko] Alerta Alteração do Estado do Serviço", alert_service_notification(we.worker, service),
                'suporte@indikko.com', [we.worker.email], fail_silently=True)

            return redirect('hirer:home')

    if request.is_ajax():
        return render(
            request, 'partials/_evaluate-professional.html',
            {'form': form, 'worker': worker, 'service': service})
    else:
        return render(
            request, 'hirer/evaluate-professional.html',
            {'form': form, 'worker': worker})


@login_required
def evaluate_worker_ex(request, id):
    """
    Create or update a worker evaluation/recommendation.

    This method works with fixed set of genercic questions about the worker.
    """
    worker = IndicoUser.objects.get(pk=id)
    if request.method == 'GET':
        # Checks if already exists some recommendation from current logged user
        # to evaluated professional.
        if (WorkerEvaluation.objects.filter(
           hirer=request.user, worker=worker).exists()):
            # return form with current evaluation
            evaluation = WorkerEvaluation.objects.get(
               hirer=request.user, worker=worker)
            form = EvaluationProfessionalForm(instance=evaluation)
        else:
            form = EvaluationProfessionalForm()

    elif request.method == 'POST':
        evaluation = None
        if WorkerEvaluation.objects.filter(
           hirer=request.user, worker=worker).exists():
            evaluation = WorkerEvaluation.objects.get(
              hirer=request.user, worker=worker)

        form = EvaluationProfessionalForm(
           request.POST or None, instance=evaluation)
        print(form.data)

        if form.is_valid():
            we = form.save(commit=False)
            we.hirer = request.user
            we.worker = worker
            we.save()

            if we.recommend:
                Endorsment.apply(we.hirer, we.worker)

            return redirect('hirer:home')

    if request.is_ajax():
        return render(
            request, 'partials/_evaluate-professional.html',
            {'form': form, 'worker': worker})
    else:
        return render(
            request, 'hirer/evaluate-professional.html',
            {'form': form, 'worker': worker})


def professional_details(
 request, id, template_name='hirer/professional-details.html'):
    worker = IndicoUser.objects.get(pk=id)
    recomendacoes = Endorsment.friends_that_recommends(request.user, worker)
    evaluations = WorkerEvaluation.objects.filter(worker=worker)
    categoriesSet = set()
    serviceProvided = worker.get_serviceprovided()
    for w in worker.skills.all():
        categoriesSet.add(w.category)
    return render(
     request, template_name,
     {'worker': worker, 'recomendacoes': recomendacoes, 'servicepro' : serviceProvided,
      'evaluations': evaluations, 'categoriesSet': categoriesSet})

def acme(request, token):
    return HttpResponse(settings.ACME_CHALLENGE)

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