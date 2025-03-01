
from django.contrib import admin
from gcbskp.teamMember.models import TeamMember
from django.utils.html import format_html
from django.core.paginator import Paginator



class TeamMemberAdmin(admin.ModelAdmin):
    list_display=("id","name","designation","image_thumbnail","user_id")
    list_per_page=5
    def image_thumbnail(self, obj):
        if obj.image:
            return format_html('<img src="{}" style="width: 100px; height: auto;" />', obj.image.url)
        return 'No Image'
    image_thumbnail.short_description = 'Image'


admin.site.register(TeamMember,TeamMemberAdmin)
# Register your models here.
