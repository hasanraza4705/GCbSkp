from django.contrib import admin
from gcbskp.department.models import Department
from django.core.paginator import Paginator

class DepartmentAdmin(admin.ModelAdmin):
    list_display=("id","dept_name","user_id")
    list_per_page=5
# Register your models here.

admin.site.register(Department,DepartmentAdmin)
