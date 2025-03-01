from django.contrib import admin
from gcbskp.download.models import Download
from django.core.paginator import Paginator

class DownloadAdmin(admin.ModelAdmin):
    list_display = ("id",'file', 'status',"user_id")
    list_per_page = 5
    
    
admin.site.register(Download, DownloadAdmin)

# Register your models here.
