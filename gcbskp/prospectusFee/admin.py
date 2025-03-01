from django.contrib import admin
from gcbskp.prospectusFee.models import ProspectusFee

class FeeAdmin(admin.ModelAdmin):
     list_display = ("id","fee_amount")
     
admin.site.register(ProspectusFee, FeeAdmin)

