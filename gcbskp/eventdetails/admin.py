from django.contrib import admin
from gcbskp.eventdetails.models import EventItem, EventItemImage
from django.utils.html import format_html
from django.core.paginator import Paginator


class EventItemImageInline(admin.TabularInline):
    model = EventItemImage
    extra = 1  # Number of blank forms to display

class EventItemAdmin(admin.ModelAdmin):
    inlines = [EventItemImageInline]
    list_display = ('event', 'formatted_content','user_id')
    list_per_page = 5
    
    def formatted_content(self, obj):
        # Render the HTML content safely
        return format_html(obj.description)
    formatted_content.short_description = 'Description'
   

admin.site.register(EventItem, EventItemAdmin)


