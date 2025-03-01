from django.shortcuts import render
from .models import FacultyRecord
from gcbskp.offered_program.models import Programs
from gcbskp.department.models import Department  
from django.core.paginator import Paginator
from gcbskp.admissionStatus.models import AdmissionStatus
from gcbskp.colgLogo.models import ColgLogo

def teacher_view(request):
    departments = Department.objects.all()  # Query all departments
    admissionStatus = AdmissionStatus.objects.all()
    colg_logo = ColgLogo.objects.all()
    
    teachers_by_department = {}
    for department in departments:
        teachers = FacultyRecord.objects.filter(department_name=department)
        teachers_by_department[department] = teachers
    
    # Example conditions based on number of teachers
    less_than_equal_two = []
    greater_than_three = []

    for department, teachers in teachers_by_department.items():
        count = len(teachers)  # Or teachers.count() if you want to hit the database
        print(f"Department: {department.dept_name}, Teachers: {count}")
        count = teachers.count()
        if count <= 2:
            less_than_equal_two.append((department, teachers))
        elif count >= 3:
            greater_than_three.append((department, teachers))
    
    OfferedProgramData = Programs.objects.all().order_by('id')
    print(f"greater then two:{less_than_equal_two}")
    print(f"greater then three:{greater_than_three}")

    context = {
        'teachers_less_equal_two': less_than_equal_two,
        'teachers_greater_three': greater_than_three,
        'ProgramData': OfferedProgramData,
        'admissionStatus' : admissionStatus,
        'colg_logo' : colg_logo
    }
    return render(request, 'pages/teacher.html', context)

def custom_admin_view(request):
    object_list = FacultyRecord.objects.all().order_by('id')
    paginator = Paginator(object_list, 5)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    context = {
        'page_obj': page_obj,
    }
    return render(request, 'admin/custom_template.html', context)