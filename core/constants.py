# -*- coding: utf-8 -*-
# Python 3.3 way to declare C# like enums
# http://stackoverflow.com/questions/36932/how-can-i-represent-an-enum-in-python
def enum(*sequential, **named):
    enums = dict(zip(sequential, range(len(sequential))),**named)
    return type('Enum', (), enums)

Account_States = enum (new = 0, validated = 1, approved = 2, waiting = 3, inreview = 4, suspended = 5)
User_Types = enum (contractor=1, worker=2)
Payment_Preference = enum (cash = 1, app = 2)
Service_Request_Status = enum (new = 0, accepted = 1, waiting_feedback = 2, rejected = 3, finished=4,
                               started=5, done=6, cancelled=7)
Notification_Levels = enum (success = 1, info = 2, warning = 3, danger = 4, new = 5, reject = 6)
Worker_Evaluation_items = enum(punctuality = 0, quality = 1, trust = 2, cost_benefit = 3)

ACCOUNT_STATES_CHOICES = (
    (Account_States.new,'Nova'),                        # conta recem criada
    (Account_States.validated,'Validado'),              # conta válidada via SMS
    (Account_States.approved,'Aprovado'),               # cadastro concluido com sucesso e usuario aprovado
    (Account_States.waiting, 'Aguardando aprovação'),   # aguardando aprovacao (para trabalhadores)
    (Account_States.inreview, 'Cadastro em revisão'),   # cadastro recebido em processo de analise (para trabalhadores)
    (Account_States.suspended, 'Conta Supensa'),
)

USER_TYPE_CHOICES =(
    (User_Types.contractor, 'Contratar'),
    (User_Types.worker, 'Trabalhar'),
)

PAYMENT_PREFERENCE_CHOICES =(
    (Payment_Preference.cash, 'Dinheiro'),
    (Payment_Preference.app, 'Cartão de Crédito'),
)

SERVICE_REQUEST_STATUS_CHOICES =(
    (Service_Request_Status.new, 'Novo'),
    (Service_Request_Status.accepted, 'Aceito'),
    (Service_Request_Status.waiting_feedback, 'Aguardando Feedback'),
    (Service_Request_Status.rejected, 'Rejeitado'),
    (Service_Request_Status.started, 'Iniciado'),
    (Service_Request_Status.done, 'Concluído'),
    (Service_Request_Status.cancelled, 'Cancelado'),
    (Service_Request_Status.finished, 'Finalizado'),
)

NOTIFICATION_LEVEL_CHOICES = (
    (Notification_Levels.new, 'Novo'), # Indica que uma nova foi criada solicitação
    (Notification_Levels.success, 'Successo'), # Indica que uma solicitação foi aceita
    (Notification_Levels.reject, 'Rejeitada'), # Indica que uma solicitação foi aceita
    (Notification_Levels.info, 'Informação'), #Alerta para disparar informações genericas, ex.: promoções, nova mensagem no chat
    (Notification_Levels.warning, 'Alerta'), #Alerta para chamar a atenção do usuário para algum evento. ex. Lembrete de serviço agendado
    (Notification_Levels.danger, 'Atenção'), #Alerta para indicar a necessidade de uma ação do usuário para dar prosseguimento ao fluxo do sistema
)

WORKER_EVALUATION_ITEMS = (
    (Worker_Evaluation_items.punctuality, 'Pontualidade'),
    (Worker_Evaluation_items.quality, 'Qualidade'),
    (Worker_Evaluation_items.trust, 'Confiança'),
    (Worker_Evaluation_items.cost_benefit, 'Cordialidade'),
)

SCORE_VALUES = (
    (1, '1'),
    (2, '2'),
    (3, '3'),
    (4, '4'),
    (5, '5'),
)


BRASIL_FEDERATIONS = (
    ('AC','AC'),('AL','AL'),('AP','AP'),('AM','AM'),('BA','BA'),('CE','CE'),('DF','DF'),
    ('ES','ES'),('GO','GO'),('MA','MA'),('MT','MT'),('MS','MS'),('MG','MG'),('PA','PA'),
    ('PB','PB'),('PR','PR'),('PE','PE'),('PI','PI'),('RJ','RJ'),('RN','RN'),('RS','RS'),
    ('RO','RO'),('RR','RR'),('SC','SC'),('SP','SP'),('SE','SE'),('TO','TO'),
)

#6 a 10 caracteres, um número, uma letra minúscula, uma letra maniúscula, um simbolo
PASSWORD_REGEX = "(?=^.{6,30}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$"
