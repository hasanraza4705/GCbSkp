from django.urls import path
from gcbskp.online_admission.views import *

app_name="online_admission"

urlpatterns = [
    path('', view=admin_login, name='admin_login'),
    path('logout/', admin_logout, name='admin_logout'),
   
    path('index/', Index, name='Index'),
    path('edit/',Edit,name="Edit"),
    path('delete/<int:id>',Delete,name="Delete"),
    path('update/<int:id>',Update,name="Update"),
    path('apply/',apply_view,name="apply_view"),
    path('get_course_groups/<int:program_id>/', get_course_groups, name='get_course_groups'),
    path('apply_submit/', apply_submit, name='apply_submit'),
    path('delete_student/<int:student_id>/', delete_student, name='delete_student'),

    path('student_application/<int:user_id>/', studentApplicationView, name='studentApplicationView'),
    path('download_pdf/<int:user_id>/', download_pdf, name='download_pdf'),
    path('dashboard/',dashboard,name="dashboard"),
    path('student_list/', studentList, name='studentList'),
    path('add-subject/',subject_view,name="subject_view"),
    path('instruction_list/',instruction_list,name="instruction_list"),
    path('add_instruction/',add_admissionInstruction,name="add_admissionInstruction"),
    path('edit/',edit_instruction,name="edit_instruction"),
    path('update_instruction/<int:id>',update_instruction,name="update_instruction"),
    path('view_academic_record/',view_academic_record,name='view_academic_record'),
    path('apply_form/',apply_form,name='apply_form'),
    
]
