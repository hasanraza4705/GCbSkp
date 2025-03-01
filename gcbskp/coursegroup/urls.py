from django.urls import path
from gcbskp.coursegroup.views import *

app_name="course_group"

urlpatterns = [
    path('programs/', GetProgram, name='GetProgram'),
    path('add-course/',add_course,name='add_course'),
    path('index/',Index,name="Index"),
    path('edit-course/',edit_course,name="edit_course"),
    path('update-course/<int:course_id>/', update_course, name='update_course'),
]
