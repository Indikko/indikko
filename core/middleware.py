from social.apps.django_app.middleware import SocialAuthExceptionMiddleware
from django.shortcuts import render
from social.exceptions import AuthCanceled, AuthFailed, AuthAlreadyAssociated
from django.db import IntegrityError


class SocialAuthExceptionMiddleware(SocialAuthExceptionMiddleware):
    def process_exception(self, request, exception):

        if type(exception) == AuthCanceled:
            return render(request, "core/social-exception.html", {"message": "A autenticação foi cancelada pelo usuário."})
        elif type(exception) == AuthFailed:
            return render(request, "core/social-exception.html", {"message": "Houve uma falha durante a tentativa de se autenticar."})
        elif type(exception) == AuthAlreadyAssociated:
            return render(request, "core/social-exception.html", {"message": "Usuário já cadastrado no sistema"})
        elif type(exception) == IntegrityError:
            print(exception)
            return render(request, "core/social-exception.html", {"message": "Usuário já cadastrado no sistema - ie"})
        else:
            pass
