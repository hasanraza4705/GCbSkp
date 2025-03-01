from django.contrib import admin
from gcbskp.offered_program.models import Programs
from django.utils.html import format_html
from django.core.paginator import Paginator


class ProgramAdmin(admin.ModelAdmin):
    list_display = ("id","heading","formatted_content","image_thumbnail","user_id")
    list_per_page = 5
    def image_thumbnail(self, obj):
        if obj.image:
            return format_html('<img src="{}" style="width: 100px; height: auto;" />', obj.image.url)
        return 'No Image'
    image_thumbnail.short_description = 'Image'
    
    def formatted_content(self, obj):
        # Render the HTML content safely
        return format_html(obj.short_description)
    formatted_content.short_description = 'Description'
   
   
admin.site.register(Programs, ProgramAdmin)
