# urls.py
from django.urls import path
from gcbskp.student_registration.views import register, login_view, logout, profile, login_status, change_password

app_name = 'student-registration'

urlpatterns = [
    path('register/', register, name='register'),
    path('login/', login_view, name='login_view'),
    path('logout/', logout, name='logout'),
    path('profile/', profile, name='profile'),
    path('login_status/', login_status, name='login_status'),
    path('change_password/',change_password, name="change_password"),
]