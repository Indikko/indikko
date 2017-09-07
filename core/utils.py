from django.core.urlresolvers import reverse
from django.template import loader
from django.contrib.sites.models import Site
from django.core.mail import send_mail
from django.shortcuts import redirect


def get_encoded_id(encodedString):
    return int (encodedString[2:])

def get_new_subscription_title (user):
    return user.get_full_name() + " solicitou uma conta no Indico"

def get_new_subscription_body (user, subscription):
    absolute_url = subscription.get_absolute_url()
    domain = Site.objects.get_current().domain
    full_path = "http://" + domain + absolute_url

    data = {'user':user,'link':full_path}

    message = loader.get_template('worker/message.txt').render(data)
    return message

def welcome_user (user):
    subject = loader.get_template('alerts/welcome_subject.txt').render()
    message = loader.get_template('alerts/welcome_message.txt').render({'user':user})
    #send_mail (subject,message,"suporte@indikko.com",[user.email])


def resolve_worker_evaluation_url(request, user):
    """
    Create a formatted recommnedation URI based on user id.

    Ex: http://indico.com/hirer/evaluate/1000/
    """
    return request.build_absolute_uri(reverse('hirer:evaluate', args=[user.id]))


def alert_subscription_message(request, user):
    """
    Create a formatted mail message to sent to worker user.

    This method pass the user and evaluation_link to be processed by txt
    template alerts/subscription_message.txt
    """
    message = loader.get_template(
       'alerts/subscription_message.txt').render(
       {'user': user, 'evaluation_link': resolve_worker_evaluation_url(request, user)})

    return message


def alert_new_service_notification(hirer, worker, service):
    """
    Create a formatted email message to sent to worker user
    template alerts/new_service_notification.txt
    :param hirer: User thats request the service
    :param worker: User who receive the request
    :return:
    """

    domain = Site.objects.get_current().domain
    url = "http://" + domain + "/worker/"

    message = loader.get_template(
        'alerts/new_service_notification.txt').render(
        {'worker': worker, 'hirer': hirer, 'service': service, 'url':url})

    return message


def alert_service_notification(user, service):
    """
    Create a formatted email message to sent to worker user
    template alerts/service_notification.txt
    :param hirer: User thats request the service
    :param worker: User who receive the request
    :return:
    """

    message = loader.get_template(
        'alerts/service_notification.txt').render(
        {'user': user, 'service': service})

    return message

def alert_worker_evaluated(hirer,worker):
    """
    Create a formatted email message to the worker when a hirer makes an evaluation
    template alerts/worker_evaluated.txt
    :param hirer: Who made the evaluation
    :param worker: Who was evaluated
    :return:
    """
    message = loader.get_template(
        'alerts/worker_evaluated.txt').render(
        {'worker': worker, 'hirer': hirer})

    return message


def documents_required(function=None):
    """
    Decorator to force workers to complete their profiles.

    This decorator will redirect workers with incomplete profiles to the
    detailed profile subscription view.
    """
    def _dec(view_func):
        def _view(request, *args, **kwargs):
            _user = request.user

            if _user.is_authenticated() and _user.is_worker() and\
               (not _user.is_application_form_filled):
                return redirect('/profissional/subscription/', permanent=True)
            else:
                return view_func(request, *args, **kwargs)

        _view.__name__ = view_func.__name__
        _view.__dict__ = view_func.__dict__
        _view.__doc__ = view_func.__doc__

        return _view

    if function is None:
        print("Funciont is none")
        return _dec
    else:
        print("There is some value for function")
        return _dec(function)
