from django.contrib.auth.backends import BaseBackend
from django.contrib.auth.hashers import check_password
from gcbskp.student_registration.models import RegisteredStudent

class StudentBackend(BaseBackend):
    def authenticate(self, request, username=None, password=None):
        try:
            student = RegisteredStudent.objects.get(username=username)
            if check_password(password, student.password):  
                return student
        except RegisteredStudent.DoesNotExist:
            return None  
    def get_user(self, user_id):
        try:
            return RegisteredStudent.objects.get(pk=user_id)  
        except RegisteredStudent.DoesNotExist:
            return None 
