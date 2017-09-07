# -*- coding: utf-8 -*-
from django import forms
from .models import IndicoUser,EvaluationParameter,EvaluationTemplateItem,ServiceRequest,Place, \
                    Skill, ServiceCategory, Reference, ServiceType, ServiceProvided, PhoneNumber, WorkZone
from django.contrib.auth.forms import ReadOnlyPasswordHashField
from django.utils.translation import ugettext_lazy as _
from bootstrap3_datetime.widgets import DateTimePicker

class UserCreationForm(forms.ModelForm):
    """A form for creating new users. Includes all the required
    fields, plus a repeated password."""
    password1 = forms.CharField(label='Password', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Password confirmation', widget=forms.PasswordInput)

    class Meta:
        model = IndicoUser
        fields = ('email', 'date_of_birth')

    def clean_password2(self):
        # Check that the two password entries match
        password1 = self.cleaned_data.get("password1")
        password2 = self.cleaned_data.get("password2")
        if password1 and password2 and password1 != password2:
            raise forms.ValidationError("Passwords don't match")
        return password2

    def save(self, commit=True):
        # Save the provided password in hashed format
        user = super(UserCreationForm, self).save(commit=False)
        user.set_password(self.cleaned_data["password1"])
        if commit:
            user.save()
        return user

class UserChangeForm(forms.ModelForm):
    """A form for updating users. Includes all the fields on
    the user, but replaces the password field with admin's
    password hash display field.
    """
    password = ReadOnlyPasswordHashField()

    class Meta:
        model = IndicoUser
        fields = ('email', 'password', 'date_of_birth', 'is_active', 'is_admin')

    def clean_password(self):
        # Regardless of what the user provides, return the initial value.
        # This is done here, rather than on the field, because the
        # field does not have access to the initial value
        return self.initial["password"]

class EvaluationParameterForm(forms.ModelForm):
    class Meta:
        model = EvaluationParameter
        fields = ("description","value")

class EvaluationTemplateItemForm(forms.ModelForm):
    class Meta:
        model = EvaluationTemplateItem
        fields = ("description","min_value","max_value")

class PhoneForm(forms.ModelForm):
    number = forms.CharField(label='Telefone', max_length=20)
    class Meta:
        model = PhoneNumber
        fields = ["number"]
            
    

class PlaceForm(forms.ModelForm):
    zipcode = forms.CharField(label='CEP', widget = forms.TextInput(attrs = {'class': 'required', 'onblur' : "find_cep(this.value);"}))

    class Meta:
        model=Place
        fields=['label','street','number', 'zipcode', 'show_on_map','complement','neighborhood','city','state']
        #exclude=['owner']

class WorkerSubscriptionForm(forms.Form):
    phone = forms.CharField(label='Telefone pessoal', widget=forms.TextInput(attrs={'class': 'required form-control', 'placeholder':'(92) 99932 5544'}))
    category = forms.ModelChoiceField(label = 'Profissão', queryset=ServiceCategory.objects.all(),widget=forms.Select(attrs={'class': 'required form-control'}))

    reference_name1 = forms.CharField(widget=forms.TextInput(attrs={'class': 'required form-control', 'placeholder':'Nome'}))
    reference_name2 = forms.CharField(widget=forms.TextInput(attrs={'class': 'required form-control', 'placeholder':'Nome'}))
    reference_name3 = forms.CharField(widget=forms.TextInput(attrs={'class': 'required form-control', 'placeholder':'Nome'}))

    reference_phone1 = forms.CharField(widget=forms.TextInput(attrs={'class': 'required form-control', 'placeholder':'(92) 99932 5544'}))
    reference_phone2 = forms.CharField(widget=forms.TextInput(attrs={'class': 'required form-control', 'placeholder':'(92) 99932 5544'}))
    reference_phone3 = forms.CharField(widget=forms.TextInput(attrs={'class': 'required form-control', 'placeholder':'(92) 99932 5544'}))

    resume = forms.CharField(label='Resumo profissional',required=False,widget=forms.Textarea(attrs={'class': 'form-control', 'placeholder':'Fale um pouco sobre suas habilidades.','maxlength':'149','rows':'3'}))

    id_doc = forms.FileField (label='Documento de identidade', help_text='RG, CNH, Identidade profissional',widget=forms.FileInput(attrs={'class': 'required'}))
    cpf_doc = forms.FileField (label='CPF/CNPJ', help_text='Se não constar no documento de identidade.')
    address_proof = forms.FileField (label='Comprovante de endereço', help_text='Comprovante de água, luz, telefone, etc...',widget=forms.FileInput(attrs={'class': 'required'}))
    accept_tc = forms.BooleanField(label='')

    skills = forms.ModelMultipleChoiceField (
        queryset = Skill.objects.all(),
        widget = forms.CheckboxSelectMultiple,
    )

class SkillTemplateItemForm(forms.ModelForm):
    class Meta:
        model = Skill
        fields = ("description",)

class ReferenceTemplateItemForm(forms.ModelForm):
    class Meta:
        model = Reference
        fields = ("name", 'phone_number')


class ProfilePhotoForm(forms.Form):
    docfile = forms.FileField(
        label='Selecione um arquivo',
        help_text='max. 2 megabytes'
    )
    


class ServiceProvidedForm(forms.Form):
    service_type = forms.ModelChoiceField(label = 'Tipo de serviço', 
        required=True, queryset=ServiceType.objects.all(), widget=forms.Select(attrs={'class': 'required form-control'}))
    duration = forms.IntegerField(required=True,  min_value=0, widget=forms.NumberInput(attrs={'class': 'required form-control'}))
    fixed_price = forms.BooleanField(required=False)
    price = forms.DecimalField(min_value=0, max_digits=6, decimal_places=2, widget=forms.NumberInput(attrs={'class': 'required form-control'}))
    
    def __init__(self, worker=None, **kwargs):
        super(ServiceProvidedForm, self).__init__(**kwargs)
        if worker:
            self.fields['service_type'].queryset = ServiceType.objects.filter(service_category__workers=worker).order_by('description')


class ServiceRequestForm (forms.ModelForm):
    date = forms.DateField(('%d/%m/%Y',),widget=forms.DateTimeInput(format='%d/%m/%Y', attrs={'class': 'form-control','placeholder':'Informe a data para realização do trabalho.'}))
    more_info = forms.CharField(widget=forms.Textarea(attrs={'placeholder':'Adicione aqui detalhes relevantes sobre o trabalho.','maxlength':'255','rows':'3', 'class':'form-control'}),required=False)
    phone_number = forms.CharField(label='Telefone pessoal', widget=forms.TextInput(attrs={'class': 'required form-control', 'placeholder':'(92) 99932 5544'}))
    values = [('1', 'Dinheiro'),('2','Cartão de Crédito')]
    payment_preference = forms.ChoiceField(choices=values, label="Forma de Pagamento")
        
    class Meta:
        model = ServiceRequest
        fields = ('date','time','payment_preference','address','owner','service_provided','price','more_info', 'phone_number')
        widgets = {'owner': forms.HiddenInput(),
                   'price': forms.HiddenInput(),
                   'address':forms.Select(attrs={'class': 'form-control'}),
                    }

    def __init__(self, owner=None, **kwargs):
        super(ServiceRequestForm, self).__init__(**kwargs)
        if owner:
            self.fields['address'].queryset = Place.objects.filter(owner=owner)


class CategoriesForm(forms.Form):
    category = forms.ModelChoiceField(label = 'Profissão', queryset=ServiceCategory.objects.all(),widget=forms.Select(attrs={'class': 'required form-control'}))
    

class SkillForm(forms.Form):
    skills = forms.ModelMultipleChoiceField (
        queryset = Skill.objects.all(),
        widget = forms.CheckboxSelectMultiple,
    )
        

class DomicileForm(forms.Form):
    validate = forms.CharField(label='validate')
    attendance_in_domicile = forms.BooleanField(required=False)
    costumer_service = forms.BooleanField(required=False)
    place_to_work = forms.CharField(label='Estabelecimento', required=False, widget=forms.TextInput(attrs={'placeholder':'Informe o nome do estabelecimento.'}))
            
    

class OrderForm(forms.Form):
    mobile_number = forms.CharField(widget=forms.TextInput(attrs={'class': 'required form-inline', 'placeholder':'92 99353 5353'}))
    pin = forms.IntegerField(required=True, widget=forms.NumberInput(attrs={'class': 'required form-control'}))

class AvailabilityForm(forms.Form):
    date = forms.DateTimeField(
        required=False,
        widget=DateTimePicker(options={"format": "YYYY-MM-DD HH:mm",
                                       "pickSeconds": False}))