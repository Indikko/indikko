"""
Django settings for indico project on Heroku. Fore more info, see:
https://github.com/heroku/heroku-django-template

For more information on this file, see
https://docs.djangoproject.com/en/1.9/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.9/ref/settings/
"""

import os
import dj_database_url

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PROJECT_ROOT = os.path.dirname(os.path.abspath(__file__))

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.9/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = "+l8kw+oglxu!7%paj9hpd#3s_$883%l7&8j$pi*rv=lot24w6*"


# Loading data for development enviroment
try:
    ret = os.environ['DEBUG']
    print('DSV')
    # SECURITY WARNING: don't run with debug turned on in production!
    DEBUG = True
except KeyError:
    print('PRD')
    # SECURITY WARNING: don't run with debug turned on in production!
    DEBUG = False

#EMAIL_USE_TLS = True
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_PORT = 587
EMAIL_HOST_USER = 'suporte@indikko.com'
EMAIL_HOST_PASSWORD = 'Indikko@2017'
DEFAULT_FROM_EMAIL = 'suporte@indikko.com'

#EMAIL_HOST = 'smtp.pulse.com'
#EMAIL_PORT = 2525
#EMAIL_HOST_USER = 'adm@indicoapp.com'
#EMAIL_HOST_PASSWORD = 'qSqGo56gfMj9A'
#DEFAULT_FROM_EMAIL = 'adm@indicoapp.com'


# Application definition
#EMAIL_USE_TLS = True
#EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
#EMAIL_HOST = 'smtp.gmail.com'
#EMAIL_PORT = 587
#EMAIL_HOST_USER = 'alessandro.barbosa@gmail.com'
#EMAIL_HOST_PASSWORD = 'password'
#DEFAULT_FROM_EMAIL = 'alessandro.barbosa@gmail.com'

LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'handlers': {
        'console': {
            'class': 'logging.StreamHandler',
        },
    },
    'loggers': {
        'django': {
            'handlers': ['console'],
            'level': os.getenv('DJANGO_LOG_LEVEL', 'DEBUG'),
        },
        'django.db.backends':{
            'handlers': ['console'],
            'level': 'ERROR',
            'propagate': False,
        },
    },
}

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'whitenoise.runserver_nostatic',
    'django.contrib.staticfiles',
    'django.contrib.sites',
    'corsheaders',
    'rest_framework',
    'rest_framework.authtoken',
    'rest_auth',
    'social.apps.django_app.default',
    'oauth2_provider',
    'core',
    'worker',
    'hirer',
    'public',
    'password_reset',
    'storages',
    'jquery_ui',
    'certbot_django.server',
    'bootstrap3_datetime',
    'allauth',
    'allauth.account',
    'allauth.socialaccount',
    'allauth.socialaccount.providers.facebook',
]

SITE_ID = 1

MIDDLEWARE_CLASSES = [
    'corsheaders.middleware.CorsMiddleware',
    'django.middleware.common.BrokenLinkEmailsMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.security.SecurityMiddleware',
    'whitenoise.middleware.WhiteNoiseMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'core.middleware.SocialAuthExceptionMiddleware',
]

AWS_QUERYSTRING_AUTH = False
AWS_ACCESS_KEY_ID = os.environ['AWS_ACCESS_KEY_ID']
AWS_SECRET_ACCESS_KEY = os.environ['AWS_SECRET_ACCESS_KEY']
AWS_STORAGE_BUCKET_NAME = os.environ['S3_BUCKET_NAME']
MEDIA_URL = 'https://s3.amazonaws.com/indicoapp/'
DEFAULT_FILE_STORAGE = "storages.backends.s3boto.S3BotoStorage"

STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'

CORS_ORIGIN_ALLOW_ALL = True

AUTHENTICATION_BACKENDS = (
    'social.backends.facebook.FacebookOAuth2',
    'django.contrib.auth.backends.ModelBackend',
    # `allauth` specific authentication methods, such as login by e-mail
    'allauth.account.auth_backends.AuthenticationBackend',
)

REST_FRAMEWORK = {
    'DEFAULT_AUTHENTICATION_CLASSES': (
        'rest_framework.authentication.BasicAuthentication',
        'rest_framework.authentication.SessionAuthentication',
        'oauth2_provider.ext.rest_framework.OAuth2Authentication',
    ),
    'PAGE_SIZE': 10
}

OAUTH2_PROVIDER = {
    # this is the list of available scopes
    'SCOPES': {'read': 'Read scope', 'write': 'Write scope'}
}

SOCIAL_AUTH_FACEBOOK_SCOPE = ['email']

#if ON_OPENSHIFT:
SOCIAL_AUTH_FACEBOOK_KEY = '1058588277515034'
SOCIAL_AUTH_FACEBOOK_SECRET = '822842c1c9e11775313460e4b261c0aa'
#else:
#    SOCIAL_AUTH_FACEBOOK_KEY = '1135167859857075'
#    SOCIAL_AUTH_FACEBOOK_SECRET = 'c60c2c4699dca0e5250a7d60ebfb1958'

FACEBOOK_EXTENDED_PERMISSIONS = ['email','user_friends','user_about_me']

SOCIAL_AUTH_FACEBOOK_PROFILE_EXTRA_PARAMS = {
    'fields': 'id,name,email',
}

SOCIAL_AUTH_PIPELINE = (
    'social.pipeline.social_auth.social_details',
    'social.pipeline.social_auth.social_uid',
    'social.pipeline.social_auth.auth_allowed',
    'social.pipeline.social_auth.social_user',
    'social.pipeline.user.get_username',
    'social.pipeline.user.create_user',
    'social.pipeline.social_auth.associate_user',
    'social.pipeline.social_auth.load_extra_data',
    'social.pipeline.user.user_details',
    'core.social.pipeline.get_extra_profile_fields',
)

ABSOLUTE_URL_OVERRIDES = {
    'core.subscription': lambda u: "/admin/subscription/%s/" % u.id,
}

MIGRATION_MODULES = {
    'sites': 'fixtures.sites_migrations',
}

ROOT_URLCONF = 'indico.urls'

TEMPLATES = (
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
            'debug': DEBUG,
        },
    },
)

WSGI_APPLICATION = 'indico.wsgi.application'


#Account Authentication
ACCOUNT_USER_MODEL_USERNAME_FIELD = None
ACCOUNT_AUTHENTICATION_METHOD = 'email'
ACCOUNT_EMAIL_REQUIRED = True
ACCOUNT_UNIQUE_EMAIL = True
ACCOUNT_USERNAME_REQUIRED = False


# Database
# https://docs.djangoproject.com/en/1.9/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'indico',
        'USER': 'postgres',
        'PASSWORD': 'postgres',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}

import dj_database_url
DATABASES['default'] = dj_database_url.config()

AUTH_PASSWORD_VALIDATORS = (
    {'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',},
    {'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',},
    {'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',},
    {'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',},
)

# Internationalization
# https://docs.djangoproject.com/en/1.9/topics/i18n/

import django.contrib.auth
django.contrib.auth.LOGIN_URL = '/'

LOGIN_URL = '/login/'

LANGUAGE_CODE = 'pt-br'
TIME_ZONE = 'Brazil/East'
USE_I18N = True
USE_L10N = True
USE_TZ = True

# Update database configuration with $DATABASE_URL.
db_from_env = dj_database_url.config(conn_max_age=500)
DATABASES['default'].update(db_from_env)

# Honor the 'X-Forwarded-Proto' header for request.is_secure()
SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')

# Allow all host headers
ALLOWED_HOSTS = ['https://indikko-pr-1.herokuapp.com/', 'www.indicoapp.com', 'www.indikko.com', 'indikko.com', 'indicoapp.com', 'indikko.herokuapp.com', 'indikko.com.herokudns.com']

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.9/howto/static-files/

STATIC_ROOT = os.path.join(PROJECT_ROOT, 'staticfiles')
STATIC_URL = '/static/'

AUTH_USER_MODEL = 'core.IndicoUser'
SOCIAL_AUTH_USER_MODEL = AUTH_USER_MODEL

# Extra places for collectstatic to find static files.
STATICFILES_DIRS = [
    os.path.join(PROJECT_ROOT, 'static'),
]

# Simplified static file serving.
# https://warehouse.python.org/project/whitenoise/
#STATICFILES_STORAGE = 'whitenoise.django.GzipManifestStaticFilesStorage'

#MEDIA_URL = "/media/"
#MEDIA_ROOT = os.path.join(PROJECT_ROOT, 'media/')

ADMINS = [('Davi' , 'davi_monteiro_@hotmail.com'),
          ('Elton', 'eltonsrc@gmail.com'        ),]



