from django.contrib import admin
from gcbskp.PopUpData.models import PopUpData
from django.core.paginator import Paginator
from django.utils.html import format_html

class PopUpAdmin(admin.ModelAdmin):
    list_display=("id","pop_up_desc","pop_up_link")
    list_per_page = 5
    
    
    def formatted_content(self, obj):
        return format_html(obj.pop_up_desc)
    formatted_content.short_description = 'Description'
    

admin.site.register(PopUpData,PopUpAdmin)
    