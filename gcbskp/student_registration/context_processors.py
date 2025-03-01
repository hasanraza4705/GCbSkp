# gcbskp/student_registration/context_processors.py
from gcbskp.student_registration.models import RegisteredStudent

# def auth_user(request):
#     # Django automatically stores the user_id in the session after login
#     user = request.user  # request.user gives the currently authenticated user
#     if user.is_authenticated:
#         return {'auth_user': user}
#     return {'auth_user': None}  # Return None if no user is authenticated


def auth_user(request):
    user_id = request.session.get('user_id')
    if user_id:
        try:
            user = RegisteredStudent.objects.get(id=user_id)
            return {'auth_user':user}
        except RegisteredStudent.DoesNotExist:
            return {'auth_user':None}
    return {'auth_user':None}    