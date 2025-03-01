# urls.py in gcbskp.offered_program
from django.urls import path
from . import views

app_name = 'offered_program'

urlpatterns = [
    # path('', program_list, name='program_list'),
    path('program/<int:pk>/', views.program_detail, name='program_detail'),
     path('index/',views.show_page_program,name="show_page_program"),
    path('add/',views.add_programs,name="add_programs"),
    path('edit/',views.edit_program,name="edit_program"),
    path('update/<int:id>',views.update_program,name="update_program"),
]

# views.py in gcbskp.offered_program
