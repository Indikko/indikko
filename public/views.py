from django.shortcuts import render, render_to_response, redirect
from django.contrib import auth
from django.http import HttpResponseRedirect
from django.contrib.auth.decorators import login_required
from .forms import RegistrationForm
from django.template.context import RequestContext
from core.models import IndicoUser
from django.core.urlresolvers import reverse
from core.constants import *
from core.utils import welcome_user
from django.contrib.auth import authenticate, login
from django.core.exceptions import ObjectDoesNotExist
from core.models import ServiceCategory
import random
from django.contrib import messages
import logging
from rest_framework.authtoken.models import Token
import requests
from allauth.socialaccount.providers.facebook.views import FacebookOAuth2Adapter
from rest_auth.registration.views import SocialLoginView

class FacebookLogin(SocialLoginView):
    adapter_class = FacebookOAuth2Adapter

    
logger = logging.getLogger(__name__)

def landing_page_view(request, template_name='public/landing-pg.html'):
    """
    Responds to get request and shows the system landing page.
    """

    all_categories = ServiceCategory.objects.filter(is_active=True)
    categories = ServiceCategory.get_active_categories()
    groups = dict()
    for category in categories:
        if category.group in groups:
            groups[category.group].append(category)
        else:
            groups[category.group] = [category]
    
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        if form.is_valid():

            login_from_email = form.cleaned_data['email'].lower()
            logger.error(login_from_email)
            email = login_from_email
            logger.error("landing_page: " + email)
            if email == "":
                user = IndicoUser.objects.create_user(
                    username=None,
                    password=form.cleaned_data['password1'],
                    email=form.cleaned_data['first_name']+form.cleaned_data['last_name']+str(random.randint(0,9))+str(random.randint(0,9))+str(random.randint(0,9))+str(random.randint(0,9))
                )
            else:
                user = IndicoUser.objects.create_user(
                    username=None,
                    password=form.cleaned_data['password1'],
                    email=login_from_email
                )

            user.first_name = form.cleaned_data['first_name']
            user.last_name = form.cleaned_data['last_name']
            user.account_type = 1
            user.save()

            new_user = authenticate(email=login_from_email,
                                    password=form.cleaned_data['password1'],
                                    )
            print(new_user)
            login(request, new_user)
            
            try:
                welcome_user(new_user)
            except ConnectionRefusedError:
                print('Sem conexão para enviar email!!')
            

            return select_profile(new_user)
    else:
        form = RegistrationForm()

    context = RequestContext(request, {'all_categories': all_categories, 'form': form, 'groups':groups})

    return render_to_response(template_name, context,)
    # return render (request, template_name)


def logout(request):
    logger.error("Log on logout")
    auth.logout(request)
    return redirect('indico:home')


def signup(request):
    logger.error("Log on signup")
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        if form.is_valid():
            print("form is valid")

            login_from_email = form.cleaned_data['email'].lower()

            try:
                user = IndicoUser.objects.get(email=login_from_email)
                logger.error("redirecionar para página informando algo")
            except ObjectDoesNotExist:
                logger.error("pode seguir tranquilo")

            email = login_from_email
            logger.error("signup: " + email)
            if email == "":
                user = IndicoUser.objects.create_user(
                    username=None,
                    password=form.cleaned_data['password1'],
                    email=form.cleaned_data['first_name']+form.cleaned_data['last_name']
                )
            else:
                user = IndicoUser.objects.create_user(
                    username=None,
                    password=form.cleaned_data['password1'],
                    email=login_from_email
                )

            user.first_name = form.cleaned_data['first_name']
            user.last_name = form.cleaned_data['last_name']
            user.account_type = 1
            user.save()

            try:
                new_user = authenticate(email=login_from_email,
                                    password=form.cleaned_data['password1'],
                                    )
                print(new_user)
                login(request, new_user)

                welcome_user(new_user)
            except ConnectionRefusedError:
                print('Sem conexão para enviar email!!')


            return select_profile(request, new_user)# HttpResponseRedirect(reverse('indico:success'))
    else:
        form = RegistrationForm()

    context = RequestContext(request, {
        'form': form
    })

    allusers = IndicoUser.objects.all()
    for u in allusers:
        token = Token.objects.get_or_create(user=u)
        print (token)

    return render_to_response('public/signup.html', context,)

def try_login(request):
    logger.error("Login view terms: ")
    for terms in request.POST:
        logger.error(terms)
    
    messages.info(request, 'Para continuar navegando, cadastre-se. :)')
    return HttpResponseRedirect('/')

def create_tokens(request):
    allusers = IndicoUser.objects.all()
    for u in allusers:
        token = Token.objects.get_or_create(user=u)
        print (token)
    return redirect('indico:home')

def login_view(request):
    logger.error("Login view terms: ")
    for terms in request.POST:
        logger.error(terms)

    if 'username' in request.POST:
        username = request.POST['username'].lower()
        password = request.POST['password']
        user = authenticate(email=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('core:home')
        else:
            messages.info(request, 'Usuário ou senha inválida.')
            return HttpResponseRedirect('/')
    else:
        return redirect('indico:home')


def select_profile(request, requester=None):
    """
    If the user is worker then redirect to workers home page. Otherwise
    redirect to contractors homepage (including administrators). This method
    assumes that the requester is a valid and active user.
    """
    allusers = IndicoUser.objects.all()
    for u in allusers:
        token = Token.objects.get_or_create(user=u)
        print (token)
    logger.error("Log on select-profile")
    if requester is None:
        logger.error("None")
        user = request.user
    else:
        logger.error("requester")
        user = requester

    if user.is_worker():
        if user.account_state == Account_States.new:
            return redirect('worker:subscription')
        else:
            return redirect('core:home')
    else:
        if user.account_state == Account_States.new:
            return redirect('core:home')
        return redirect('core:home')


def profile_choice(request, template_name='public/profile-choice.html'):
    """
    Allows the user choose between professional or contractor.
    """
    logger.error("Log on profile-choice")
    # Considerando que haverá um id disponível nesse ponto
    user = IndicoUser.objects.get(id=request.user.id)
    if not user.account_type:
        user.account_type = User_Types.contractor
    user.save()

    return redirect('indico:select-profile')


def terms_and_conditions(request, template_name='public/terms.html'):
    """
    Displays the static terms and conditions document.
    """
    return render(request, template_name)


def success_dialog(request, template_name='public/success.html'):
    return render(request, template_name)

def template_calendar(request, template_name='calendar.html'):
    return render(request, template_name)

