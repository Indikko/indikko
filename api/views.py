# -*- coding: utf-8 -*-
from rest_framework import status, serializers
from rest_framework import viewsets
from core.models import IndicoUser, ServiceCategory, ServiceRequest, WorkerEvaluation
from core.constants import *
from .serializers import *
from django.contrib.auth import get_user_model
from rest_framework import generics, permissions
from rest_framework.authentication import SessionAuthentication, BasicAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.views import APIView
import datetime

import logging

logger = logging.getLogger(__name__)

class ServiceTypeViewSet(generics.ListAPIView):
    queryset = ServiceType.objects.all()
    serializer_class = ServiceTypeSerializer

class ServiceTypeSpecificViewSet(generics.ListAPIView):
    serializer_class = ServiceTypeSerializer
    def get_queryset(self, format=None):
        id = self.kwargs['id']
        queryset = ServiceType.objects.filter(service_category_id=id)
        return queryset
    

class ProfessionalList (generics.ListAPIView):
    serializer_class = WorkersSerializer
    def get_queryset(self, format=None):
        _id = self.kwargs['id']
        return IndicoUser.objects.professionals_by_category(_id)


class DateServiceRequestList (APIView):
    def get(self, request, mes, ano, worker, userId, format=None):
        serviceList = ServiceRequest.objects.filter(date__year=ano, date__month=mes)
        if worker == '1':
            serviceList = serviceList.filter(service_provided__worker_id=userId)
        else:
            serviceList = serviceList.filter(owner_id=userId)
        result = [sr.date for sr in serviceList]
        return Response(result)


class WorkersViewSet (viewsets.ReadOnlyModelViewSet):
    """
    Read only view to query workers
    """
    queryset = IndicoUser.objects.filter(account_type=User_Types.worker)
    serializer_class = WorkersSerializer
    #permission_classes = (permissions.IsAuthenticated,)


class ServiceCategoryViewSet (viewsets.ReadOnlyModelViewSet):
    """
    Read only view to query workers
    """
    queryset = ServiceCategory.objects.filter(is_active=True)
    serializer_class = ServiceCategorySerializer2
    #permission_classes = (permissions.IsAuthenticated,)


class ServiceCategoryResume(generics.ListAPIView):
    serializer_class = ServiceCategoryResume
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        return ServiceCategory.objects.filter(is_active=True)


class UserView(viewsets.ModelViewSet):
    """
    CRUD view for IndicoUsers. Currently the serializer imposes that only email
    passoword and account type can be edited/updated.
    """
    serializer_class = UserSerializer
    queryset = get_user_model().objects.all()


class WorkerEvaluationView(viewsets.ModelViewSet):
    """
    CRUD view for WorkerEvaluation. 
    """
    serializer_class = WorkerEvaluationSerializer
    queryset = WorkerEvaluation.objects.all()


class SimpleUserView(viewsets.ModelViewSet):
    """
    Simple view for IndicoUsers.
    """
    serializer_class = SimpleUserSerializer
    queryset = get_user_model().objects.all()


class EvaluationTemplateByCategory(generics.RetrieveAPIView):
    """
    Recupera o template que corresponde ao id da categoria passado pela url
    da requisição através do argumento 'pk'
    """
    serializer_class = EvaluationTemplateSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        pk = self.kwargs['pk']
        return EvaluationTemplate.objects.filter(category__id=pk)


class ServiceRequestComplete(generics.ListAPIView):
    serializer_class = ServiceRequestSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        thisServiceRequest = ServiceRequest.objects.filter(date__gte=datetime.date.today()).select_related()
        return thisServiceRequest
        
class ServiceCategoryComplete(generics.ListAPIView):
    serializer_class = ServiceProvidedSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        return ServiceProvided.objects.all()
        


class ServiceCategoryList(generics.ListAPIView):
    """
    Retorna a lista de ServiceCategories ativas do sistema
    """
    serializer_class = ServiceProvidedSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        logger.error("*****************************QUERYSET*********************************")
        if self.request.method == 'POST':
            logger.error("*******INSIDE IF*****************")
            for terms in request.POST:
                logger.error(terms)
        user = self.request.user
        return ServiceProvided.objects.filter(worker=user)


class ServiceRequestView(generics.ListCreateAPIView):
    
    """
    Classe que junto ao ServiceRequestSerializer permite que o cliente possa
    listas suas próprias requisições de serviço e criar novas solicitações.
    """
    serializer_class = ServiceRequestSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        logger.error("*****************************QUERYSET*********************************")
        if self.request.method == 'POST':
            logger.error("*******INSIDE IF*****************")
            for terms in request.POST:
                logger.error(terms)
        user = self.request.user
        return ServiceRequest.objects.filter(owner = user)

    def perform_create(self, serializer):
        serializer.save(owner=self.request.user)


class ServiceRequestCreateView(generics.ListCreateAPIView):
    
    """
    Classe que junto ao ServiceRequestSerializer permite que o cliente possa
    listas suas próprias requisições de serviço e criar novas solicitações.
    """
    serializer_class = ServiceRequestCreateSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        logger.error("*****************************QUERYSET*********************************")
        
        user = self.request.user
        return ServiceRequest.objects.filter(owner = user)

    def perform_create(self, serializer):
        logger.error("creator!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
        if self.request.method == 'POST':
            for terms in self.request.POST:
                logger.error(terms)
        serializer.save(owner=self.request.user)


class ServiceRequestRetrieveUpdate(generics.RetrieveUpdateAPIView):
    serializer_class = ServiceRequestSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        logger.error("*****************************QUERYSET*********************************")
        if self.request.method == 'POST':
            logger.error("*******INSIDE IF*****************")
            for terms in request.POST:
                logger.error(terms)
        pk = self.kwargs['pk']
        user = self.request.user
        return ServiceRequest.objects.filter(pk = pk)

class PhoneViewSet (viewsets.ModelViewSet):
    serializer_class = PhoneNumberSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        return PhoneNumber.objects.filter(indico_user=self.request.user)

    def perform_create(self, serializer):
        serializer.save (indico_user = self.request.user)

class PlaceViewSet (viewsets.ModelViewSet):
    serializer_class = PlaceSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        return Place.objects.filter(owner=self.request.user)

    def perform_create(self, serializer):
        serializer.save (owner = self.request.user)


class NotificationList (generics.ListAPIView):
    serializer_class = NotificationSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        return Notification.objects.filter(to=self.request.user)


class NotificationDetails (generics.RetrieveUpdateAPIView):
    serializer_class = NotificationSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        pk = self.kwargs['pk']
        return Notification.objects.filter(pk = 1)


class ServiceMessageListCreate (generics.ListCreateAPIView):
    serializer_class = ServiceMessageSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        print ("ServiceMessageListCreate111")
        sid = self.kwargs['id']
        messages = ServiceMessage.objects.filter(service_id = sid)
        return messages
    # Ao criar uma mensagem uma notificação deve ser criada para a outra parte
    # customizar o método perform_create aqui.


class LatestServiceMessageList (generics.ListAPIView):
    """
    Lista apenas as novas mensagens recebidas para o serviço
    """
    serializer_class = ServiceMessageSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        sid = self.kwargs['id']
        sr = ServiceRequest.objects.get(pk = sid)
        return ServiceMessage.get_service_messages (sr,self.request.user)

class ProfessionalDetails(generics.RetrieveAPIView):
    """

    """
    serializer_class = WorkersSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        pk = self.kwargs['pk']
        return IndicoUser.objects.get_active_worker_details(pk)


class LastServiceMessage(APIView):
    """
    Retorna a última mensagem de uma thread de serviço
    """
    permission_classes = (permissions.IsAuthenticated,)

    def get(self, request, pk, format=None):
        sr = ServiceRequest.objects.get(pk = pk)
        message = ServiceMessage.get_last_message(sr)
        serializer = ServiceMessageSerializer(message)

        return Response(serializer.data)


class LoggedUserProfile(APIView):
    authentication_classes = ()
    permission_classes = (permissions.IsAuthenticated,)

    def get(self, request, format=None):
        try:
            user = IndicoUser.objects.get(pk=request.user.id)
            serializer = IndicoUserProfile(user, many=False)
            return Response(serializer.data)
        except IndicoUser.DoesNotExist:
            print('='*80)
            print(request.user.id)
            self_request_user = self.request
            print(self_request_user)
            return Response({'erro':'erro'})



class ExampleView(APIView):
    authentication_classes = (SessionAuthentication, BasicAuthentication)
    permission_classes = (IsAuthenticated,)

    def get(self, request, format=None):
        user = IndicoUser.objects.get(pk=request.user.id)
        serializer = IndicoUserProfile(user, many=False)
        content = {
            'user': serializer.data # `django.contrib.auth.User` instance.
        }
        return Response(content)
