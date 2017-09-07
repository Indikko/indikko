from django.contrib import admin
from django.contrib.auth.models import Group
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.contrib.auth.forms import ReadOnlyPasswordHashField
from django.utils.translation import ugettext_lazy as _
import copy

from .models import EvaluationTemplateItem, EvaluationParameter, Skill,IndicoUser,\
                    ServiceCategory, GroupServiceCategory, ServiceType, EvaluationTemplate,\
                    ServiceRequest, Notification, Place, UserDocuments, Subscription,\
                    WorkerEvaluation, Subscription, Reference, ClicksToShowMore, ServiceProvided, PhoneNumber

from .forms import EvaluationTemplateItemForm, EvaluationParameterForm,\
                   SkillTemplateItemForm, UserChangeForm, UserCreationForm,\
                   ReferenceTemplateItemForm

class UserAdmin(BaseUserAdmin):
    # The forms to add and change user instances

    # The fields to be used in displaying the User model.
    # These override the definitions on the base UserAdmin
    # that reference the removed 'username' field
    fieldsets = (
        (None, {'fields': ('email', 'password', 'account_type','categories','account_state', 'phone_number')}),
        (_('Personal info'), {'fields': ('photo','first_name', 'last_name','resume', 'documents','skills', 'attendance_in_domicile', 'costumer_service', 'place_to_work')}),
        (_('Permissions'), {'fields': ('is_active', 'is_staff', 'is_superuser',
                                       )}),
        (_('Important dates'), {'fields': ('last_login', 'date_joined')}),
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('email', 'password1', 'password2')}
        ),
    )
    form = UserChangeForm
    add_form = UserCreationForm
    list_display = ('email', 'first_name', 'last_name','account_type','get_evaluation_count','account_state','is_staff')
    search_fields = ('email', 'first_name', 'last_name')
    list_filter = ('is_staff', 'account_type','account_state')
    ordering = ('email',)

class EvaluationTemplateInLine(admin.TabularInline):
    model = EvaluationTemplateItem
    form = EvaluationTemplateItemForm
    extra = 1

class EvaluationTemplateAdmin (admin.ModelAdmin):
    fields = ['name','category']
    inlines = [EvaluationTemplateInLine]
    list_display = ('name',)

class EvaluateParameterInLine(admin.TabularInline):
    model = EvaluationParameter
    form = EvaluationParameterForm
    extra = 1

class ServiceRequestAdmin(admin.ModelAdmin):
    list_display = ('id', 'owner','status', 'address', 'date','time','payment_preference','price')
    inlines = [EvaluateParameterInLine]

class SkillTemplateInLine (admin.TabularInline):
    model = Skill
    form = SkillTemplateItemForm
    extra = 0

class ReferenceTemplateInLine (admin.TabularInline):
    model = Reference
    form = ReferenceTemplateItemForm
    extra = 0

class SubscriptionAdmin (admin.ModelAdmin):
    list_display = ('candidato', 'status',)
    list_filter = ('candidate__account_state',)
    inlines = [ReferenceTemplateInLine]

class ServiceCategoryAdmin (admin.ModelAdmin):
    inlines = [SkillTemplateInLine]

class WorkerEvaluationAdmin(admin.ModelAdmin):
    list_display = ('contratante', 'trabalhador', 'partial_rate', 'created')

def copyNumber(modeladmin, request, queryset):
    for number in queryset:
        number_copy = copy.copy(number)
        number_copy.id = None
        number_copy.save()
    copyNumber.short_description = "Copia o números de telefone selecionados"

class PhoneNumberAdmin(admin.ModelAdmin):
    list_display = ('indico_user', 'number')
    actions = [copyNumber]
        

class ClicksToShowMoreAdmin (admin.ModelAdmin):
    list_display = ('id', 'hirer', 'worker', 'clicked')
    list_filter = ('hirer', 'worker',)
    fields = ['hirer', 'worker', 'clicked']
    readonly_fields = ('hirer', 'worker', 'clicked',)

@admin.register(ServiceProvided)
class ServiceProvidedAdmin(admin.ModelAdmin):
    '''
    '''
    pass


admin.site.site_header = "Administração - Indikko"

admin.site.register(IndicoUser, UserAdmin)
admin.site.register(ServiceCategory, ServiceCategoryAdmin)
admin.site.register(GroupServiceCategory)
admin.site.register(ServiceType)
admin.site.register(PhoneNumber, PhoneNumberAdmin)
admin.site.register(EvaluationTemplate, EvaluationTemplateAdmin)
admin.site.register(ServiceRequest, ServiceRequestAdmin)
admin.site.register(Notification)
admin.site.register(Place)
admin.site.register(UserDocuments)
admin.site.register(Subscription, SubscriptionAdmin)
admin.site.register(WorkerEvaluation, WorkerEvaluationAdmin)

admin.site.register(ClicksToShowMore, ClicksToShowMoreAdmin)
