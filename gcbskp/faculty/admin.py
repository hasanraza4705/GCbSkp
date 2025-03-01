
from django.contrib import admin
from gcbskp.faculty.models import FacultyRecord
from django.utils.html import format_html
from django.core.paginator import Paginator

class FacultyAdmin(admin.ModelAdmin):
    list_display=("id","name","designation","image_thumbnail","department_name",'user_id')
    list_per_page = 5
    def image_thumbnail(self, obj):
        if obj.image:
            return format_html('<img src="{}" style="width: 100px; height: auto;" />', obj.image.url)
        return 'No Image'
    image_thumbnail.short_description = 'Image'

admin.site.register(FacultyRecord,FacultyAdmin)
# Register your models here.
