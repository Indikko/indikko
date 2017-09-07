# -*- coding: utf-8 -*-
from core.models import Skill, ServiceCategory, ServiceRequest, \
    ServiceProvided, ServiceType
from django import forms

class WorkerSubscriptionForm(forms.Form):
    category = forms.ModelChoiceField(label = 'Profissão', queryset=ServiceCategory.objects.all(),widget=forms.Select(attrs={'class': 'required form-control'}))

    resume = forms.CharField(label='Resumo profissional',required=False,widget=forms.Textarea(attrs={'class': 'form-control', 'placeholder':'Fale um pouco sobre suas habilidades.','maxlength':'149','rows':'3'}))

    id_doc = forms.FileField (label='Documento de identidade', help_text='RG, CNH, Identidade profissional',widget=forms.FileInput(attrs={'class': 'required'}))
    cpf_doc = forms.FileField (label='CPF/CNPJ', help_text='Se não constar no documento de identidade.')
    address_proof = forms.FileField (label='Comprovante de endereço', help_text='Comprovante de água, luz, telefone, etc...',widget=forms.FileInput(attrs={'class': 'required'}))
    accept_tc = forms.BooleanField(label='')

    #skills = forms.ModelMultipleChoiceField (
    #    queryset = Skill.objects.all(),
    #    widget = forms.CheckboxSelectMultiple,
    #)

class StatusServiceResquetForm(forms.ModelForm):
    class Meta:
        model = ServiceRequest
        fields = '__all__'
        widgets = {
            'owner': forms.HiddenInput(),
            'address': forms.HiddenInput(),
            'date': forms.HiddenInput(),
            'time': forms.HiddenInput(),
            'payment_preference': forms.HiddenInput(),
            'status': forms.HiddenInput(),
            'service_provided': forms.HiddenInput(),
            'created': forms.HiddenInput(),
            'price': forms.HiddenInput(),
            'more_info': forms.HiddenInput(),
            'updated': forms.HiddenInput(),
        }

