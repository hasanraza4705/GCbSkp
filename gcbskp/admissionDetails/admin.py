from django.contrib import admin
from gcbskp.admissionDetails.models import AdmissionSchedule
from django.utils.html import format_html
from django.core.paginator import Paginator

class AdmissionScheduleAdmin(admin.ModelAdmin):
    list_display = ("id","title","formatted_content","status","user_id")
    list_per_page = 5
    
    def formatted_content(self, obj):
        # Render the HTML content safely
        return format_html(obj.admission_detail)
    formatted_content.short_description = 'Description'
    
   
   
admin.site.register(AdmissionSchedule, AdmissionScheduleAdmin)
