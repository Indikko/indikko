from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.home, name='home'),
    url(r'^subscription/', views.worker_subscription_form, name='subscription'),
    url(r'^set_service_status/', views.set_service_status, name='set_service_status'),
    url(r'^get_day_service/', views.get_day_service, name='get_day_service'),
    url(r'^get_service_table_day/', views.get_service_table_day, name='get_service_table_day'),
]
