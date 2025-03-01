from django.urls import path
from gcbskp.faculty import views

app_name = "teachers"
urlpatterns = [
    path('teachers/', views.teacher_view, name='teacher_view'),
    # Add more URL patterns as needed
]
