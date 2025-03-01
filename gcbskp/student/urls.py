# urls.py
from django.urls import path
from gcbskp.student.views import  * 

app_name = 'student-details'

urlpatterns = [
    path('add-admission-details/', add_student, name='add_student'),
    path('update_student/<int:student_id>/', update_student, name='update_student'),
    path('add/', AddData, name='AddData'),
    path('add-subject/', add_subject, name='add_subject'),
    path('update_verify_status/', update_verify_status, name='update_verify_status'),
    path('promotedStudent/',promotedStudent,name="promotedStudent"),
    path('generate_merit_list/',generate_merit_list,name="generate_merit_list"),
    path('get-course-groups/', get_course_groups, name='get_course_groups'),
    path('print_challan/', print_challan, name='print_challan'),
    path('delete_subject/<int:subject_id>/', delete_subject, name='delete_subject'),

]