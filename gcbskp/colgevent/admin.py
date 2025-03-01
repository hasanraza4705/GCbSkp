from django.contrib import admin
from gcbskp.colgevent.models import ColgEvent
from django.core.paginator import Paginator
from django.utils.html import format_html

class EventAdmin(admin.ModelAdmin):
    list_display = ("id","event_title","image_thumbnail","user_id")
    list_per_page = 5
    def image_thumbnail(self, obj):
        if obj.image:
            return format_html('<img src="{}" style="width: 150px; height: auto;" />', obj.image.url)
        return 'No Image'
    image_thumbnail.short_description = 'Image'
    
    
    
   
admin.site.register(ColgEvent, EventAdmin)