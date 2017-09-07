# -*- coding: utf-8 -*-
from core.models import ServiceRequest, Place, WorkerEvaluation, WorkerEvaluationItem, IndicoUser, Endorsment, \
    Notification, ServiceCategory
from core.constants import Worker_Evaluation_items, Service_Request_Status
from django import forms
from django.db.models import Q
from django.utils.safestring import mark_safe
from django.core.mail import send_mail
from core.utils import *

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
                   'address':forms.Select(attrs={'class': 'required form-control'}),
                    }

    def __init__(self, owner=None, **kwargs):
        super(ServiceRequestForm, self).__init__(**kwargs)
        if owner:
            self.fields['address'].queryset = Place.objects.filter(owner=owner)

class HorizontalRadioRenderer(forms.RadioSelect.renderer):
  def render(self):
    return mark_safe(u'\n'.join([u'%s\n' % w for w in self])) + "<br>"

class EvaluationForm(forms.Form):
    values = [('1','1'),('2','2'),('3','3'),('4','4'),('5','5')]
    punctuality = forms.ChoiceField(
        choices=values,
        label="Pontualidade",
        widget=forms.RadioSelect(renderer=HorizontalRadioRenderer)
    )
    quality = forms.ChoiceField(
        choices=values,
        label="Qualidade",
        widget=forms.RadioSelect(renderer=HorizontalRadioRenderer)
    )
    trust = forms.ChoiceField(
        choices=values,
        label="Confiança",
        widget=forms.RadioSelect(renderer=HorizontalRadioRenderer)
    )
    cost_benefit = forms.ChoiceField(
        choices=values,
        label="Cordialidade",
        widget=forms.RadioSelect(renderer=HorizontalRadioRenderer)
    )
    service = forms.ModelChoiceField(queryset=ServiceRequest.objects.all(), widget=forms.HiddenInput())
    indicate = forms.BooleanField(required=False, widget=forms.HiddenInput())
    hirer = forms.ModelChoiceField(queryset=IndicoUser.objects.all(), widget=forms.HiddenInput())
    worker = forms.ModelChoiceField(queryset=IndicoUser.objects.all(), widget=forms.HiddenInput())

    def save(self):
        data = self.cleaned_data
        hirer = data['hirer']
        worker = data['worker']
        try:
            evaluation = WorkerEvaluation.objects.get(hirer=hirer,worker=worker)
        except WorkerEvaluation.DoesNotExist:
            evaluation = WorkerEvaluation.create(hirer, worker)
        finally:
            items = {
                Worker_Evaluation_items.punctuality:int(data['punctuality']),
                Worker_Evaluation_items.quality: int(data['quality']),
                Worker_Evaluation_items.trust: int(data['trust']),
                Worker_Evaluation_items.cost_benefit: int(data['cost_benefit']),
            }
            for item in items.items():
                try:
                    evaluation_item = WorkerEvaluationItem.objects.get(workerEvaluation=evaluation,item=item[0])
                    evaluation_item.value = item[1]
                    evaluation_item.save()
                except WorkerEvaluationItem.DoesNotExist:
                    WorkerEvaluationItem.create(
                        evaluation,
                        item[0],
                        item[1]
                    )

        if data['indicate'] is True:
            Endorsment.apply(hirer, worker)
        else:
            Endorsment.remove(hirer, worker)
        service = data['service']
        service.status = Service_Request_Status.finished
        service.save()
        notification = Notification.objects.requestRejected(service.professional, "NOVA AVALIAÇÃO: " +
                                                            service.owner.get_full_name() + " avaliou seu perfil.")
        notification.save()
        # Send new evaluation alert by email
        send_mail(
            "[Indikko] Alerta de Nova Avaliação", alert_worker_evaluated(hirer, worker),
            'suporte@indikko.com', [worker.email], fail_silently=True)
        # Send service changed alert by email
        send_mail(
            "[Indikko] Alerta Alteração do Estado do Serviço", alert_service_notification(worker, service),
            'suporte@indikko.com', [worker.email], fail_silently=True)


class SearchWorkerForm(forms.Form):
    search_field = forms.CharField(max_length=120,required=False)
    category_id = forms.IntegerField(
        widget=forms.HiddenInput(),
        required=False
    )

    def search(self):
        value = self.data['search_field']
        category_id = self.data['category_id']
        category = ServiceCategory.objects.get(pk=category_id)
        entries = IndicoUser.objects.search_professionals_by_name(category,value)
        return entries


class EvaluationProfessionalForm(forms.ModelForm):

    class Meta:
        model = WorkerEvaluation
        fields = (
            'punctuality', 'quality', 'trust',
            'cost_benefit', 'recommend', 'testimonial', 'worker', 'hirer',)
        widgets = {
          'testimonial': forms.Textarea(attrs={'class': 'form-control', 'placeholder': 'Deixe aqui sua opnião sobre o profissional.','rows':'3'}),
          'worker': forms.HiddenInput(),
          'hirer': forms.HiddenInput(),
          }

    def __init__(self, *args, **kwargs):
        super(EvaluationProfessionalForm, self).__init__(*args, **kwargs)
        self.fields['hirer'].required = False
        self.fields['worker'].required = False
