from django.contrib import admin
from gcbskp.admissionStatus.models import AdmissionStatus

    # models.EmailField( max_length=254,p)
class AdmissionStatusAdmin(admin.ModelAdmin):
    list_display=("id","status")
    
admin.site.register(AdmissionStatus,AdmissionStatusAdmin)
