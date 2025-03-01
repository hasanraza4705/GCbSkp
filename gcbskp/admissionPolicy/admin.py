from django.contrib import admin
from gcbskp.admissionPolicy.models import AdmissionPolicy
from django.core.paginator import Paginator
from django.utils.html import format_html

class AdmissionPolicyAdmin(admin.ModelAdmin):
    list_display = ("id","formatted_content","program","status","coursegroup","user_id")
    list_per_page = 5
    
    def formatted_content(self, obj):
        # Render the HTML content safely
        return format_html(obj.description)
    formatted_content.short_description = 'Description'
    class Media:
        js = ('admin/coursegroup_filter.js',)
    
   
   
admin.site.register(AdmissionPolicy, AdmissionPolicyAdmin)
