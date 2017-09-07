from django.conf.urls import url
from .views import *
from rest_framework.authtoken import views

urlpatterns = [
    url(r'^$', landing_page_view, name='home'),
    url(r'^logout/$', logout,name='logout'),
    url(r'^try_login/$', try_login, name='try_login'),
    url(r'^login/$',login_view, name='login'),
    url(r'^signup/$', signup, name='signup'),
    url(r'^redirect/$', select_profile, name='select-profile'),
    url(r'^profile/choice/$', profile_choice,name='profile-choice'),
    url(r'^terms/$', terms_and_conditions, name='terms'),
    url(r'^api-token-auth/', views.obtain_auth_token),
    url(r'^success/$', success_dialog, name='success'),
    url(r'^tokens/$', create_tokens, name='tokens'),
    url(r'^template/calendar$', template_calendar, name='calendar'),
   
]
