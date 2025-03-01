from django.contrib import admin
from gcbskp.review.models import Reviews
from django.utils.html import format_html
from django.core.paginator import Paginator

class ReviewsAdmin(admin.ModelAdmin):
    list_display = ("id","name","formatted_content","image_thumbnail","designation","user_id")
    list_per_page = 5
    def image_thumbnail(self, obj):
        if obj.image:
            return format_html('<img src="{}" style="width: 100px; height: auto;" />', obj.image.url)
        return 'No Image'
    image_thumbnail.short_description = 'Image'
    
    def formatted_content(self, obj):
        # Render the HTML content safely
        return format_html(obj.message)
    formatted_content.short_description = 'Description'
# Register your models here.
   
   
admin.site.register(Reviews, ReviewsAdmin)
