# -*- coding: utf-8 -*-
from django.conf.urls import url, include
from .views import *
from core.views import get_phone_ajax, rank_worker_ajax, set_status_we_ajax, send_pin_ajax
from rest_framework.urlpatterns import format_suffix_patterns

from rest_framework import routers

router = routers.DefaultRouter()
router.register(r'categories', ServiceCategoryViewSet, 'categories')
router.register(r'users', SimpleUserView, 'users')
router.register(r'workerevaluation', WorkerEvaluationView, 'workerevaluation')
router.register(r'workers', WorkersViewSet)
router.register(r'places', PlaceViewSet, 'places')
router.register(r'phones', PhoneViewSet, 'phones')

urlpatterns = [
    # Routers urls
    url(r'^', include(router.urls)),

    # Categories
    url('^categories-resume', ServiceCategoryResume.as_view(), name='categories-resume'),

    # professionals
    url ('^professionals/(?P<id>.+)/$', ProfessionalList.as_view(), name='professionals'),
    url ('^professional/(?P<pk>.+)/$', ProfessionalDetails.as_view(), name='professional-details'),

    # User profiles
    url('^user/profile/$',LoggedUserProfile.as_view()),   

    url('^service-description/$', ServiceTypeViewSet.as_view()),
    url('^service-description/(?P<id>[0-9]+)/$', ServiceTypeSpecificViewSet.as_view()),

    # Authentication urls
    url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),

    # Templates urls
    url('^template/(?P<pk>.+)/$', EvaluationTemplateByCategory.as_view(),name="template-detail"),

    # Services urls
    url('^all-services/$',ServiceCategoryComplete.as_view()),
    url('^services/$',ServiceCategoryList.as_view()),
    url('^dateservices/(?P<mes>[0-9]+)/(?P<ano>[0-9]+)/(?P<worker>[0-1])/(?P<userId>[0-9]+)/?$', DateServiceRequestList.as_view(), name='date-service-list'),

    # Agendamentos
    url('^agendamentos/(?P<pk>.+)/$', ServiceRequestRetrieveUpdate.as_view(),name="service-details"),
    url('^agendamentos/$', ServiceRequestView.as_view(), name='agendamento-list'),
    url('^criar-agendamento/$', ServiceRequestCreateView.as_view(), name='criar-agendamento'),
    url('^todos-agendamentos/$', ServiceRequestComplete.as_view(), name='todos-agendamentos'),

    # Notifications
    url('^notifications/$', NotificationList.as_view(), name='notification-list'),
    url('^notifications/(?P<pk>.+)/$', NotificationDetails.as_view(), name='notification-details'),

    # Messages
    url('^messages/(?P<id>[0-9])/$', ServiceMessageListCreate.as_view(), name='msg-list-update'),
    url('^messages/(?P<id>[0-9])/latest/$', LatestServiceMessageList.as_view(), name='msg-latest'),
    url('^messages/(?P<pk>[0-9])/last/$', LastServiceMessage.as_view(),name="msg-last"),


    url ('^example/$', ExampleView.as_view(), name='example'),

    #Ajax
    url('^ajax/get-phone-user/$', get_phone_ajax, name='get_phone_ajax'),
    url('^ajax/rank-worker/$', rank_worker_ajax, name='rank_worker_ajax'),
    url('^ajax/set-status-we/$', set_status_we_ajax, name='set_status_we_ajax'),
    url('^ajax/send_pin_ajax/$', send_pin_ajax, name='send_pin_ajax'),
]