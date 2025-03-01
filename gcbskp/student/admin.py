from django.contrib import admin
from gcbskp.student.models import Student
from gcbskp.student.models import Application
from gcbskp.student.models import Province, District



    # models.EmailField( max_length=254,p)
class StudentAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'mobile_no', 'date_of_birth', 'gender', 'created_at')
    search_fields = ('name', 'email', 'mobile_no')
    list_filter = ('gender', 'nationality', 'province', 'district', 'marital_status')
    ordering = ('-created_at',)
    fields = (
        'name', 'cnic_no', 'photo', 'date_of_birth', 'mobile_no', 'email',
        'father_name', 'father_cnic', 'father_mobile_no', 'father_occupation',
        'guardian_name', 'guardian_cnic', 'guardian_contact_no',
        'permanent_address', 'postal_address',
        'nationality', 'province', 'district', 'gender', 'religion',
        'hafiz_e_quran', 'blood_group', 'marital_status', 'disability_status',
        'related_to_worker', 'worker_name', 'worker_department', 'worker_relation',
        'user_id', 'verifiy_status', 'merit_lit_status', 'created_at'
    )
    readonly_fields = ('created_at',)

admin.site.register(Student, StudentAdmin)
admin.site.unregister(Student)


class ApplicationAdmin(admin.ModelAdmin):
    list_display = ('program', 'admission_status', 'prospectus_fee', 'user_id', 'applied_date')
    search_fields = ('program__name', 'admission_status', 'user_id')  # Assuming program has a 'name' field
    list_filter = ('admission_status', 'program')
    ordering = ('-applied_date',)
    fields = (
        'program', 'course_groups', 'admission_status', 'prospectus_fee', 
        'user_id', 'applied_date'
    )
    readonly_fields = ('applied_date',)

admin.site.register(Application, ApplicationAdmin)
admin.site.unregister(Application)

class ProvinceAdmin(admin.ModelAdmin):
    list_display = ('id','province',)  
    search_fields = ('province',)  

class DistrictAdmin(admin.ModelAdmin):
    list_display = ('id','district',)  
    search_fields = ('district',)  

admin.site.register(Province, ProvinceAdmin)
admin.site.register(District, DistrictAdmin)