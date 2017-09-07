# -*- coding: utf-8 -*-
import re
from django import forms
#from django.contrib.auth.models import User
from core.models import IndicoUser, ServiceCategory
from django.utils.translation import ugettext_lazy as _
from core.constants import *

def validade_password(password):
    prog = re.compile(PASSWORD_REGEX)
    result = prog.match(password)
    if ((result is None) or (result.string != password)):
        raise forms.ValidationError(_("Senha inválida! A senha deve conter de 6 a 30 caracteres, contendo uma letra "
                                      "maiúscula uma minúscula, um número e um caractere especial"))
    return password


class RegistrationForm(forms.Form):
    #username = forms.RegexField(regex=r'^\w+$', widget=forms.TextInput(attrs=dict(required=True, max_length=30)), label=_("Username"), error_messages={ 'invalid': _("This value must contain only letters, numbers and underscores.") })

    first_name = forms.CharField(widget=forms.TextInput(attrs={'class': 'required form-control login-input'}))
    last_name = forms.CharField(widget=forms.TextInput(attrs={'class': 'required form-control login-input'}))
    email = forms.CharField(widget=forms.TextInput(attrs={'class': 'required form-control login-input'}))
    password1 = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'required form-control login-input', 'placeholder': 'Senha'}))
    password2 = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'required form-control login-input', 'placeholder': 'Repita sua senha'}))

    def clean_email(self):
        try:
            user = IndicoUser.objects.get(email__iexact=self.cleaned_data['email'])
        except IndicoUser.DoesNotExist:
            return self.cleaned_data['email']
        raise forms.ValidationError(_("E-mail já cadastrado."))


    def clean(self):
        if 'password1' in self.cleaned_data and 'password2' in self.cleaned_data:
            if self.cleaned_data['password1'] != self.cleaned_data['password2']:
                raise forms.ValidationError(_("A confirmação de senha está diferente da senha definida."))
        return self.cleaned_data
