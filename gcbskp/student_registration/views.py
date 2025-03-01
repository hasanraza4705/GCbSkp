
from django.shortcuts import render, redirect
from gcbskp.student_registration.forms import StudentRegistrationForm
from django.contrib.auth import authenticate, login as auth_login
from django.contrib.auth.hashers import check_password
from django.contrib.auth.decorators import login_required
from gcbskp.student_registration.forms import StudentLoginForm
from gcbskp.student_registration.models import RegisteredStudent
from django.contrib.auth.hashers import make_password
from django.contrib.auth import logout as auth_logout
from django.contrib import messages
from django.contrib.auth.hashers import make_password


#check validation
def login_status(request):
    user_id = request.session.get('user_id')
    if user_id:
        return redirect('online_admission:apply_view')
    else:
        return redirect('student-registration:register')

def register(request):
    if request.method == 'POST':
        form = StudentRegistrationForm(request.POST)
        if form.is_valid():
            email = form.cleaned_data['email']
            confirm_email = form.cleaned_data['confirm_email']
            password = form.cleaned_data['password']
            confirm_password = form.cleaned_data['confirmPassword']
            print(f"confirm_password")
            print(password)
            print(email)
            print(confirm_email)

            if email != confirm_email:
                form.add_error('confirm_email', 'Emails do not match.')
                return redirect('register')
            if password != confirm_password:
                form.add_error('confirmPassword', 'Passwords do not match.')
                return redirect('register')

            if form.errors:

                return render(request, 'registration/register.html', {'form': form})

            form.save()
            return redirect('student-registration:login_view')  
    else:
        form = StudentRegistrationForm()

    return render(request, 'registration/register.html', {'form': form})

# student login view
def login_view(request):
    if request.method == 'POST':
        form = StudentLoginForm(request.POST)
        if form.is_valid():
            email = form.cleaned_data['email']
            password = form.cleaned_data['password']
            try:
                student = RegisteredStudent.objects.get(email=email)
                if check_password(password,student.password):
                    request.session['user_id'] = student.id
                    request.session['Name'] = student.Name
                    return redirect('home')
                else:
                    form.add_error(None,'Invalid data')
            except RegisteredStudent.DoesNotExist:
                form.add_error(None,'User Not Exists')
    else:
        form = StudentLoginForm()

    return render(request, 'registration/login.html', {'form': form})




# student logout view
def logout(request):
    request.session.delete()
    request.session.flush()
    
    return redirect('home:sliderData') 

# student profile view
def profile(request):
    user_id = request.session.get('user_id')
    if user_id:
        try:
            student = RegisteredStudent.objects.get(id=user_id)
            return render(request, 'registration/std_profile.html', {'student': student})
        except RegisteredStudent.DoesNotExist:
            return redirect('student-registration:login_view')  
    else:
        return render(request,'pages/home.html')  # 


def change_password(request):
    
    user_id = request.session.get('user_id')

    try:
        
        student = RegisteredStudent.objects.get(id=user_id)
    except RegisteredStudent.DoesNotExist:
        messages.error(request, "User not found.")
        return redirect('student-registration:profile')  

    
    if request.method == 'POST':
        
        new_password = request.POST.get('new_password')

        if new_password:
            
            student.password = make_password(new_password, hasher='argon2')

           
            student.save()

            
            messages.success(request, "Password updated successfully!")

            return redirect('student-registration:profile')  
        else:
            messages.error(request, "Password cannot be empty.")
    

    return render(request, 'pages/profile.html', {'student': student})
    