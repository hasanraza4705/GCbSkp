from django.contrib import admin
from gcbskp.online_admission.models import AcademicRecord
from gcbskp.online_admission.models import Subject


    # models.EmailField( max_length=254,p)
class CourseAdmin(admin.ModelAdmin):
    list_display=("id","class_name","year","board","obtain_marks",'grade' ,'percentage','user_id')
    
admin.site.register(AcademicRecord,CourseAdmin)
admin.site.unregister(AcademicRecord)
# Register your models here.

class SubjectAdmin(admin.ModelAdmin):
    list_display=("id","form_data_id","subject_name","obtain_marks","total_marks",'user_id')
    
admin.site.register(Subject,SubjectAdmin)
admin.site.unregister(Subject)