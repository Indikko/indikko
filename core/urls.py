from django.conf.urls import url, patterns
from . import views

urlpatterns = [
	url(r'^$', views.home, name='home'),
	url(r'^profissional/(?P<id>[0-9]+)/$',
        views.professional_details, name='professional-details'),
	url(r'^profissionais/(?P<category>[0-9]+)/$',
        views.professionals, name='professionals'),
	url(r'^agenda/$', views.full_schedule, name='schedule'),
    url(r'^confirmacao/sms/$', views.sms_validation, name='sms-validation'),
	url(r'^agendamento/(?P<service_provided>[0-9]+)/?$',
        views.service_request_create, name='service-request-create'),
    url(r'^endereco/$', views.address_list, name='place-list'),
    url(r'^endereco/add/$', views.address_create, name='place-create'),
    url(r'^remove/(?P<id>[0-9]+)$', views.remove_service_provide, name='remove_service_provide'),
    url(r'^remove_profession/(?P<id>[0-9]+)$', views.remove_profession, name='remove_profession'),
    url(r'^remove_workzone/(?P<id>[0-9]+)$', views.remove_workzone, name='remove_workzone'),
    url(r'^endereco/edit/(?P<id>[0-9]+)/$', views.address_update, name='place-edit'),
    url(r'^endereco/delete/(?P<id>[0-9]+)/$', views.address_delete, name='place-delete'),
    url(r'^skills/(?P<id>[0-9]+)/$', views.skills_from_category, name='skills'),
    url(r'^alertas/$', views.notifications_list, name='notifications'),
    url(r'^perfil/$', views.settings, name='settings'),
    url(r'^agenda/get_day_service/', views.get_day_service, name='get_day_service'),
    url(r'^telefone/edit/(?P<id>[0-9]+)/$', views.phone_update, name='phone-edit'),
    url(r'^telefone/delete/(?P<id>[0-9]+)/$', views.phone_delete, name='phone-delete'),
    url(r'^telefone/$', views.phone_list, name='phone-list'),
    url(r'^telefone/add/$', views.phone_create, name='phone-create'),
    url(r'^obrigado/$', views.thanks_evaluation, name='thanks_evaluation')
    
]
