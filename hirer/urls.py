from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.home, name='home'),
    
    url(r'^profissional/(?P<id>[0-9]+)/$',
        views.professional_details, name='professional-details'),
    url(r'^agendamento/(?P<service_provided>[0-9]+)/?$',
        views.service_request_create, name='service-request-create'),
    url(r'^profissionais/(?P<category>[0-9]+)/$',
        views.professionals, name='professionals'),
    url(r'^agenda/$', views.full_schedule, name='schedule'),
    url(r'^friend/recommendations/(?P<worker>[0-9]+)/$',
        views.friends_recommendations, name='friend-recommendations'),
    url(r'^schedule/evaluate_worker/',
        views.evaluate_worker_ex, name='evaluate_worker'),
    url(r'^service/end/(?P<id>[0-9]+)/$', views.evaluate_service,
        name='finish-service'),
    url(r'^evaluate/(?P<id>[0-9]+)/$',
        views.evaluate_worker_ex, name='evaluate'),
    url(r'^schedule/get_day_service/', views.get_day_service, name='get_day_service'),
]
