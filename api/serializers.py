# -*- coding: utf-8 -*-
from rest_framework import serializers
from core.models import *
from django.contrib.auth import get_user_model


class EndorsmentSerializer(serializers.ModelSerializer):
    """
    Serializer for query Endorsment
    """
    class Meta:
        model = Endorsment
        fields = ('hirer', 'worker')


class SkillsSerializer(serializers.ModelSerializer):
    """
    Serializer fro query skills
    """
    class Meta:
        model = Skill
        fields = ('description', )

class ServiceTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = ServiceType
        fields = ('description','service_category')

class ServiceProvidedSerializer(serializers.ModelSerializer):
    service_type = ServiceTypeSerializer()
    class Meta:
        model = ServiceProvided
        fields = ('id', 'service_type', 'fixed_price', 'duration', 'price', 'worker')

class PhoneNumberSerializer(serializers.ModelSerializer):
    """docstring for PhoneNumberSerializer"""
    class Meta:
        model = PhoneNumber
        fields = ('indico_user', 'number')

class WorkersSerializer(serializers.ModelSerializer):
    """
    Serializer for query workers without filters
    """
    fullname = serializers.CharField(source='get_full_name')
    thumbnail = serializers.CharField(source='profile_picture')
    url = serializers.CharField(source='get_absolute_url', read_only=True)

    photo_url = serializers.CharField(source='get_photo_url', read_only=True)
    skills = SkillsSerializer(many=True) 
    core_endorsement_worker = EndorsmentSerializer(many=True)
    get_serviceprovided = ServiceProvidedSerializer(many=True)
    full_phone = serializers.CharField(source='get_all_numbers')

    class Meta:
        model = get_user_model()
        fields = ('id', 'email', 'first_name', 'fullname', 'thumbnail', 'photo_url', 'resume',
                  'rate', 'endorsements', 'account_type', 'url', 'categories', 
                  'skills', 'costumer_service','place_to_work', 'attendance_in_domicile', 'core_endorsement_worker', 'get_average_trust', 
                  'get_average_quality', 'get_average_punctuality', 'price', 'get_neighborhood',
                  'get_first_place', 'get_serviceprovided', 'phone_number', 'full_phone')
        #extra_kwargs = {
        #    'url': {'view_name': 'professional-details', 'lookup_field': 'pk'}
        #    }

class IndicoUserProfile(serializers.ModelSerializer):
    fullname = serializers.CharField(source='get_full_name')
    thumbnail = serializers.CharField(source='profile_picture')

    class Meta:
        model = get_user_model()
        fields = ('id', 'email', 'fullname', 'thumbnail', 'resume', 'rate',
                  'endorsements', 'account_type')


class SimpleUserSerializer(serializers.ModelSerializer):
    """
    Serializer intended to list and create new workers and contractors via api.
    """
    firstname = serializers.CharField(source='first_name')
    lastname = serializers.CharField(source='last_name')
    get_workers_evaluated = WorkersSerializer(many=True)

    class Meta:
        model = get_user_model()
        fields = ('email', 'firstname', 'lastname', 'account_type', 'get_workers_evaluated')
        read_only_fields = ('is_staff', 'is_superuser', 'is_active', 'date_joined', 'get_workers_evaluated')


class UserSerializer(serializers.ModelSerializer):
    """
    Serializer intended to list and create new workers and contractors via api.
    """
    firstname = serializers.CharField(source='first_name')
    lastname = serializers.CharField(source='last_name')

    class Meta:
        model = get_user_model()
        fields = ('email','password','firstname','lastname','account_type')
        write_only_fields = ('password',)
        read_only_fields = ('is_staff', 'is_superuser', 'is_active', 'date_joined',)

    def create(self, validated_data):
        user = super(UserSerializer, self).create(validated_data)
        user.set_password(validated_data.get('password'))

        # TODO: Verificar se esse é o local adequado para persistir o usuário que está
        # sendo criado. Sem esse save(), a api não salva o password em um formato reconhecido
        # pelo Django.
        user.save()
        return user

class ServiceCategorySerializer(serializers.ModelSerializer):
    """
    Lista os campos necessários do Model ServiceCategory para os clientes construirem
    dinamicamente os relatórios embutidos nas solicitações de serviço. Visando facilitar
    o acesso ao template de questionário, esse serializer adicionar um campo template
    contendo a url completa de acesso ao template (datails) associado a categoria.
    """
    template = serializers.HyperlinkedIdentityField(source='template_category', read_only=True, view_name="template-detail")
    class Meta:
        model = ServiceCategory
        fields = ('id','description','template')


class ServiceCategoryResume(serializers.ModelSerializer):
    class Meta:
        model = ServiceCategory
        fields = ('id', 'description', 'image', 'workers')       
        

class ServiceCategorySerializer2(serializers.ModelSerializer):
    """
    Lista os campos necessários do Model ServiceCategory para os clientes construirem
    dinamicamente os relatórios embutidos nas solicitações de serviço. Visando facilitar
    o acesso ao template de questionário, esse serializer adicionar um campo template
    contendo a url completa de acesso ao template (datails) associado a categoria.
    """
    workers = serializers.StringRelatedField(many=True)
    workers = WorkersSerializer(many=True)

    class Meta:
        model = ServiceCategory
        fields = ('id', 'description', 'image', 'workers')

class EvaluationTemplateItemSerializer(serializers.ModelSerializer):
    """
    Serializer utilizado para formatar a apresentação dos EvaluationTemplateItems no
    EvaluationTemplateSerializer. Dessa maneira o cliente recebe em uma única chamada
    os detalhes do Template e os items.
    """
    class Meta:
        model = EvaluationTemplateItem
        fields = ('description','min_value','max_value')

class EvaluationTemplateSerializer(serializers.ModelSerializer):
    """
    Formata a apresentação dos detalhes do template e os itens que o compõe.
    """
    questions = EvaluationTemplateItemSerializer(source='template_items', many=True,read_only=True)
    class Meta:
        model = EvaluationTemplate

class EvaluationParameterSerializer(serializers.ModelSerializer):
    """
    Formata a entrada de questões respondidas pelos clientes no momento da solicitação
    de serviço. O extra_kwargs foi necessário para que o id aparecesse. Para informações
    mais detalhada consulte o artigo do stackflow no link:

    http://stackoverflow.com/questions/27858184/nested-field-serializer-data-missing
    """

    class Meta:
        model = EvaluationParameter
        fields = ('id','description','value',)
        extra_kwargs = {
            "id": {
                "read_only": False,
                "required": False,
            },
        }

class ServiceRequestCreateSerializer(serializers.ModelSerializer):
    """
    Formata a apresentação da solicitação de serviço para listagem, inclusão e atualização.
    """
    owner = serializers.PrimaryKeyRelatedField(required = False, read_only=True)
    evaitems = EvaluationParameterSerializer(many=True)
    #service_provided = ServiceProvidedSerializer(many=False)

    class Meta:
        model = ServiceRequest

    def create(self, validated_data):
        evaitems_data = validated_data.pop('evaitems')
        sr = ServiceRequest.objects.create(**validated_data)

        for evaitem_data in evaitems_data:
            EvaluationParameter.objects.create(service=sr, **evaitem_data)
        return sr

    def update(self, instance, validated_data):
        instance.date = validated_data.get('date', instance.date)
        instance.time = validated_data.get('time', instance.time)
        instance.payment_preference = validated_data.get('payment_preference', instance.payment_preference)
        instance.status = validated_data.get('status', instance.status)
        instance.address = validated_data.get('address', instance.address)
        instance.save()

        # Intera pela lista de evaluation items se salva apenas o value alterado
        # preservando os outros dados.
        evaitems_data = validated_data.pop('evaitems')
        for item in evaitems_data:
            parameter = EvaluationParameter.objects.get(pk=item.get('id'))
            parameter.value = item.get('value')
            parameter.save()

        return instance


class ServiceRequestSerializer(serializers.ModelSerializer):
    """
    Formata a apresentação da solicitação de serviço para listagem, inclusão e atualização.
    """
    owner = serializers.PrimaryKeyRelatedField(required = False, read_only=True)
    #evaitems = EvaluationParameterSerializer(many=True)
    service_provided = ServiceProvidedSerializer(many=False)

    class Meta:
        model = ServiceRequest

    def create(self, validated_data):
        evaitems_data = validated_data.pop('evaitems')
        sr = ServiceRequest.objects.create(**validated_data)

        for evaitem_data in evaitems_data:
            EvaluationParameter.objects.create(service=sr, **evaitem_data)
        return sr

    def update(self, instance, validated_data):
        instance.date = validated_data.get('date', instance.date)
        instance.time = validated_data.get('time', instance.time)
        instance.payment_preference = validated_data.get('payment_preference', instance.payment_preference)
        instance.status = validated_data.get('status', instance.status)
        instance.address = validated_data.get('address', instance.address)
        instance.save()

        # Intera pela lista de evaluation items se salva apenas o value alterado
        # preservando os outros dados.
        evaitems_data = validated_data.pop('evaitems')
        for item in evaitems_data:
            parameter = EvaluationParameter.objects.get(pk=item.get('id'))
            parameter.value = item.get('value')
            parameter.save()

        return instance

class PlaceSerializer(serializers.ModelSerializer):
    """
    """
    owner = serializers.PrimaryKeyRelatedField(required = False, read_only=True)

    class Meta:
        model = Place

class NotificationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Notification

class ServiceMessageSerializer(serializers.ModelSerializer):
    class Meta:
        model = ServiceMessage


class WorkerEvaluationSerializer(serializers.ModelSerializer):
    class Meta:
        model = WorkerEvaluation
