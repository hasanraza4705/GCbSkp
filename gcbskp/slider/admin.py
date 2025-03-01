
from django.contrib import admin
from gcbskp.slider.models import Slider
from django.utils.html import format_html
from django.core.paginator import Paginator

class SliderAdmin(admin.ModelAdmin):
    list_display=("id","formatted_content","image_thumbnail","user_id")
    list_per_page = 5
    def image_thumbnail(self, obj):
        if obj.slider_image:
            return format_html('<img src="{}" style="width: 150px; height: auto;" />', obj.slider_image.url)
        return 'No Image'
    image_thumbnail.short_description = 'Image'
    
    def formatted_content(self, obj):
        # Render the HTML content safely
        return format_html(obj.slider_heading)
    formatted_content.short_description = 'Description'
# Register your models here.

admin.site.register(Slider,SliderAdmin)
# Register your models here.
