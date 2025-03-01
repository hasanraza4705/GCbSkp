from django.shortcuts import render, redirect
from gcbskp.users.models import User
from django.contrib.auth import authenticate, login
from gcbskp.online_admission.models import AcademicRecord , Subject
from gcbskp.offered_program.models import Programs
from gcbskp.student.models import Student
from django.urls import reverse
from django.http import JsonResponse
from gcbskp.coursegroup.models import CourseGroup
from gcbskp.student.models import Application
from django.http import JsonResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
from io import BytesIO
from django.shortcuts import get_object_or_404
from django.http import HttpResponse
from django.contrib import messages
from django.contrib.auth import logout
from django.core.paginator import Paginator
from gcbskp.online_admission.models import AdmissionInstruction
from gcbskp.online_admission.models import Country
from gcbskp.prospectusFee.models import ProspectusFee
from gcbskp.colgLogo.models import ColgLogo
from gcbskp.student.models import Province
from gcbskp.student.models import District
# admin login view 

def admin_login(request):

    try:
        if request.user.is_authenticated:
            return render(request,'pages/admindashboard.html')

        if request.method == 'POST':
            email = request.POST.get('email')
            password = request.POST.get('password')

            if not email or not password:
                messages.error(request, 'Email and password are required.')
                return render(request, 'pages/admin_login.html')

            try:
                user_obj = User.objects.get(email=email)
            except User.DoesNotExist:
                messages.error(request, 'Account not found.')
                return render(request, 'pages/admin_login.html')

            user = authenticate(request, email=email, password=password)
            if user is not None:
                if user.is_superuser:
                    login(request, user)
                    return render(request,'pages/admindashboard.html')  
                else:
                    messages.error(request, 'You do not have admin privileges.')
                    return render(request, 'pages/admin_login.html')
            else:
                messages.error(request, 'Invalid login details.')
                return render(request, 'pages/admin_login.html')

        return render(request, 'pages/admin_login.html')

    except Exception as e:
        messages.error(request, f'An error occurred: {e}')
        return render(request, 'pages/admin_login.html')


# admission dashboard view
def dashboard(request):
    return render(request, 'pages/admindashboard.html')


# student application print page view 
def studentApplicationView(request, user_id):
    student = get_object_or_404(Student, user_id=user_id)
    form_data = AcademicRecord.objects.filter(user_id=user_id)
    form_subjects = {
        form.id: Subject.objects.filter(form_data_id=form.id) 
        for form in form_data
    }
    application = get_object_or_404(Application, user_id=user_id)

    context = {
        'student': student,
        'form_data': form_data,
        'form_subjects': form_subjects,
        'application': application,
    }

    return render(request, 'pages/student_application.html', context)

# download pdf view
def download_pdf(request, user_id):
    student = get_object_or_404(Student, user_id=user_id)
    form_data = AcademicRecord.objects.filter(user_id=user_id)
    subjects = Subject.objects.filter(user_id=user_id)
    application = get_object_or_404(Application, user_id=user_id)

    context = {
        'student': student,
        'form_data': form_data,
        'subjects': subjects,
        'application': application,
    }

    template = get_template('pages/student_application.html')
    html = template.render(context)

    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition'] = f'attachment; filename="student_application_{student.name}.pdf"'

    pisa_status = pisa.CreatePDF(html, dest=response)

    if pisa_status.err:
        # Optional: Log the error for debugging
        print(pisa_status.err)
        return HttpResponse('We had some errors <pre>' + html + '</pre>')

    return response


def delete_student(request, student_id):
    # Get the student object or return 404 if not found
    student = get_object_or_404(Student, id=student_id)
    
    if request.method == 'POST':
        
        student.delete()

        # Send success message
        messages.success(request, f"Student {student.name} and all related data have been deleted successfully.")
        return redirect('online_admission:studentList')  
    return redirect('online_admission:studentList')

def student_view(request):
    programs = Programs.objects.all()
    return render(request, 'pages/student.html',{'programs': programs})

# subject page view
def subject_view(request):
    current_user_id = request.session.get('user_id')  # Get user_id from session
    form_data_id = request.session.get('form_data_id')  # Get form_data_id from session
    student_id = request.session.get('student_application_id')
    if current_user_id is None:
        print(f"Number of Applications for {current_user_id}")
        return redirect('home:sliderData')
    # Fetch all students
    subject = Subject.objects.filter(user_id=current_user_id)

    # Fetch form data records associated with the current user
    form_data = AcademicRecord.objects.filter(application_id=student_id)

    # Get all unique class names from form_data (if there are multiple form records per user)
    class_names = form_data.values_list('class_name', 'id').distinct()

    # Fetch college logos (if needed)
    colg_logo = ColgLogo.objects.all()
    
    # Return the data to the template
    return render(request, 'pages/subject.html', {
        'subjects': subject,
        'form_data':form_data,
        'class_names': class_names,  # All class names from form data
        'form_data_id': form_data_id,  # Used to check the radio button
        'colg_logo': colg_logo,
    })


# apply application view
def apply_view(request):
    programs = Programs.objects.all()
    province = Province.objects.all()
    district = District.objects.all()
    current_user_id = request.session.get('user_id')
    print(f"Number of Applications for {current_user_id}")

    admissionInstruction = AdmissionInstruction.objects.all()
    colg_logo = ColgLogo.objects.all()
    if current_user_id is None:
        # debuging here
        print(f"Number of Applications for {current_user_id}")
        return redirect('home:sliderData')
    if not current_user_id:
        formData = AcademicRecord.objects.none()
        return render(request, 'pages/student.html', {'provinces':province,'districts':district,'programs': programs, 'formData': formData , 'admissionInstruction' :admissionInstruction,'colg_logo' : colg_logo})

    else:

        formData = AcademicRecord.objects.filter(user_id=current_user_id)
        return render(request, 'pages/student.html', {'provinces':province,'districts':district,'programs': programs, 'formData': AcademicRecord , 'admissionInstruction' :admissionInstruction,'colg_logo' : colg_logo})


# academic record page view
def Index(request):
    formData = AcademicRecord.objects.all()
    return render(request, 'pages/modelCRUD.html', {'formData': formData})


# course group page view
def get_course_groups(request, program_id):
    course_groups = CourseGroup.objects.filter(program_id=program_id).values('id', 'name')
    return JsonResponse({'course_groups': list(course_groups)})


# application submit view
def apply_submit(request):
    if request.method == 'POST':
        program_id = request.POST.get('program')
        course_group_ids = request.POST.getlist('course_groups')

        if not program_id:
            return redirect('online_admission:apply_view')  # Redirect to apply view if no program_id is selected

        # Check if the program_id is 3
        if program_id == '3':  # Ensure program_id is a string here, or use the correct type
            user_id = request.session.get('user_id')

            if user_id:
                # Check how many entries exist in FormData for this user
                form_data_count = AcademicRecord.objects.filter(user_id=user_id).count()

                if form_data_count != 2:
                    # If user doesn't have exactly 2 entries in FormData, show error and redirect
                    messages.error(request, "You need to enter exactly 2  records first.")
                    return redirect('online_admission:view_academic_record')  # Redirect back to the apply view
            else:
                # If no user_id in session, redirect to login
                messages.error(request, "User is not logged in.")
                return redirect('login')  # Or any appropriate redirection to login

        # Proceed to handle application submission

        FEE_PER_COURSE = ProspectusFee.objects.first()  # Get the fee details
        program = Programs.objects.get(id=program_id)  # Get the selected program

        # Check if there's an existing application for the user
        existing_application = Application.objects.filter(user_id=request.session.get('user_id')).first()

        if existing_application:
            # Update existing application
            application = existing_application
            application.program = program
            application.course_groups.clear()  # Clear any old course group selections
        else:
            # Create new application
            application = Application(program=program, user_id=request.session.get('user_id'), prospectus_fee=0)

        application.save()  # Save the application to DB

        # Add the selected course groups to the application
        for course_group_id in course_group_ids:
            course_group = CourseGroup.objects.get(id=course_group_id)
            application.course_groups.add(course_group)

        # Calculate total fee based on the selected course groups
        total_fee = len(course_group_ids) * FEE_PER_COURSE.fee_amount
        application.prospectus_fee = total_fee
        application.save()  # Save the final application with updated fee

        # Redirect to the student application view
        return redirect('online_admission:studentApplicationView', user_id=request.session.get('user_id'))

    # If not a POST request, redirect to the student application view
    return redirect('online_admission:studentApplicationView', user_id=request.session.get('user_id'))



# edit academic record view
def Edit(request):

    Data = AcademicRecord.objects.all()

    context = {
        'Data' : Data
    }

    return render(request, 'pages/modelCRUD.html',context)



# update academic record view 
def Update(request,id):
    if(request.method == 'POST'):
        class_name = request.POST.get('class_name')
        year = request.POST.get('year')
        board = request.POST.get('board')
        obtain_marks = request.POST.get('obtain_marks')
        total_marks = request.POST.get('total_marks')
        grade = request.POST.get('grade')

        formData = AcademicRecord(
            id=id,
            class_name=class_name,
            year=year,
            board=board,
            obtain_marks=obtain_marks,
            total_marks=total_marks,
            grade=grade,
            user_id = request.session.get('user_id')
        )

        formData.save()

        return redirect(reverse('online_admission:Index'))



# academic record delete view
def Delete(request,id):
    formData = AcademicRecord.objects.get(id=id)
    formData.delete()
    return redirect(reverse('online_admission:Index'))


# admin side student list view
def studentList(request):
    students = Student.objects.filter(verifiy_status__isnull=True) 
    student_records = []

    for student in students:
        form_data_list = AcademicRecord.objects.filter(user_id=student.user_id)
        student_subjects = []

        for form_data in form_data_list:
            subjects_for_data = Subject.objects.filter(form_data_id=form_data.id)
            student_subjects.append({
                'form_data': form_data,
                'subjects': subjects_for_data
            })

        application_records = []
        applications = Application.objects.filter(user_id=student.user_id)
        for application in applications:
            related_course_groups = application.course_groups.all()
            application_records.append({
                'application': application,
                'course_groups': related_course_groups
            })

        student_records.append({
            'student': student,
            'form_data': form_data_list,
            'form_data_subjects': student_subjects,
            'applications': application_records,
        })

    paginator = Paginator(student_records, 10)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    context = {
        'student_records': page_obj,
        'page_obj': page_obj,
    }

    return render(request, 'pages/studentList.html', context)


# admin logout view
def admin_logout(request):
    logout(request)
    messages.success(request, "You have been logged out.")
    return redirect('online_admission:admin_login')



# admission instruction list
def instruction_list(request):
    admissionInstruction = AdmissionInstruction.objects.all()
    
    return render(request,'pages/admission_instruction.html', {'admissionInstruction' : admissionInstruction})
    
def add_admissionInstruction(request):
    AdmissionInstruction.objects.create(
        instruction=request.POST.get('instruction'),
        user_id=request.session.get('user_id')
        )
    
    messages.success(request, 'Instruction added successfully!')
            
    return redirect(reverse('online_admission:instruction_list'))


def edit_instruction(request):
    
    admissionInstruction = AdmissionInstruction.objects.all()
    
    context = {
        'admissionInstruction' : admissionInstruction
    }
    
    return render(request, 'pages/admission_instruction.html',context)    


def update_instruction(request,id):
    instruction_instance = get_object_or_404(AdmissionInstruction, id=id)
    if request.method == 'POST':
        instruction = request.POST.get('instruction')
        
        instruction_instance.instruction = instruction
        instruction_instance.save()
        return redirect(reverse('online_admission:instruction_list')) 
    else: 
        
        return render(request, 'pages/admission_instruction.html',{'admissionInstruction': instruction_instance}) 
    
def view_academic_record(request):
    current_user_id = request.session.get('user_id')
    colg_logo = ColgLogo.objects.all()
    
    if current_user_id is None:
        print(f"Number of Applicationsjk for {current_user_id}")
        return redirect('home:sliderData')
    if not current_user_id:
        formData = AcademicRecord.objects.none()
        return render(request, 'pages/academic_record.html', { 'formData': formData, 'colg_logo' : colg_logo})
    else:
        formData = AcademicRecord.objects.filter(user_id=current_user_id)
        return render(request, 'pages/academic_record.html', {'formData': formData ,'colg_logo' : colg_logo})


def apply_form(request):
    current_user_id = request.session.get('user_id')
    colg_logo = ColgLogo.objects.all()
    form_data_id = request.session.get('form_data_id')
    if current_user_id is None:
        print(f"Number of Applicationsjk for {current_user_id}")
        return redirect('home:sliderData')
    if current_user_id and form_data_id:
        programs = Programs.objects.all()
        return render(request, 'pages/apply.html', { 'programs': programs, 'colg_logo' : colg_logo})
    else:
        return redirect(reverse('online_admission:view_academic_record'))

