from django.contrib import admin
from gcbskp.news.models import News
from django.utils.html import format_html
from django.core.paginator import Paginator

class NewsAdmin(admin.ModelAdmin):
    list_display = ("id","news_heading","formatted_content","image_thumbnail","status","user_id")
    list_per_page = 5
    
    def image_thumbnail(self, obj):
        if obj.news_image:
            return format_html('<img src="{}" style="width: 150px; height: auto;" />', obj.news_image.url)
        return 'No Image'
    image_thumbnail.short_description = 'Image'
    
    def formatted_content(self, obj):
        # Render the HTML content safely
        return format_html(obj.news_description)
    formatted_content.short_description = 'Description'
   
   
admin.site.register(News, NewsAdmin)
