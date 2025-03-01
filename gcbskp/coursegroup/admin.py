from django.contrib import admin
from gcbskp.coursegroup.models import CourseGroup
from django.core.paginator import Paginator
from django.utils.html import format_html

class CourseGroupAdmin(admin.ModelAdmin):
    list_display = ("id","name","formatted_content","program_id","user_id")
    list_per_page = 5
    
    
    
    def formatted_content(self, obj):
        # Render the HTML content safely
        return format_html(obj.short_description)
    formatted_content.short_description = 'Description'
   
   
admin.site.register(CourseGroup, CourseGroupAdmin)
