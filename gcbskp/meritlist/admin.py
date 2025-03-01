from django.contrib import admin
from gcbskp.meritlist.models import MeritList
from django.core.paginator import Paginator

class MeritAdmin(admin.ModelAdmin):
    list_display=("id","title","document","user_id")
    list_per_page = 5

# Register your models here.

admin.site.register(MeritList,MeritAdmin)

