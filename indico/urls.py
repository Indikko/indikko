from django.conf.urls import include, url
from django.contrib import admin
from django.conf.urls.static import static
from django.conf import settings
import rest_auth
from hirer import views
import certbot_django.server.urls

urlpatterns = [
    # Examples:
    # url(r'^$', 'indico.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),

    url ('', include('public.urls', namespace='indico')),
    url (r'^hirer/', include('hirer.urls', namespace='hirer')),
    url (r'^profissional/', include('worker.urls', namespace='worker')),
    url (r'^usuario/', include('core.urls', namespace='core')),
    url (r'^api/v1/', include('api.urls', namespace='api_v1')),

    url(r'^reset/done/$', 'password_reset.views.reset_done', name='password_reset_done'),

    url('', include('social.apps.django_app.urls', namespace='social')),
    url('', include('django.contrib.auth.urls', namespace='auth')),
    url(r'^o/', include('oauth2_provider.urls', namespace='oauth2_provider')),
    url('', include('password_reset.urls')),
    url(r'^.well-known/acme-challenge/(?P<token>.+)/$', views.acme),
    url(r'^rest-auth/', include('rest_auth.urls')),
    url(r'^accounts/', include('allauth.urls')),
]
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)