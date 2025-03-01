from django.contrib import admin
from gcbskp.colgLogo.models import ColgLogo
from django.utils.html import format_html

class LogoAdmin(admin.ModelAdmin):
    
    list_display=("id","image_thumbnail")
    
    def image_thumbnail(self, obj):
        if obj.colg_logo:
            return format_html('<img src="{}" style="width: 150px; height: auto;" />', obj.colg_logo.url)
        return 'No Image'
    image_thumbnail.short_description = 'Image'
    


admin.site.register(ColgLogo,LogoAdmin)
    
