from django.shortcuts import render
from django.core.paginator import Paginator
from gcbskp.coursegroup.models import CourseGroup
from gcbskp.offered_program.models import Programs
from django.urls import reverse
from django.shortcuts import render, redirect, get_object_or_404 


def custom_admin_view(request):
    object_list = CourseGroup.objects.all().order_by('id')
    paginator = Paginator(object_list, 5)  # 10 objects per page

    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    context = {
        'page_obj': page_obj,
    }
    return render(request, 'admin/custom_template.html', context)

def GetProgram(request):
    programs = Programs.objects.all()
    return redirect(reverse('course_group:Index'))


def Index(request):
    programs = Programs.objects.all()
    courses = CourseGroup.objects.all()
    return render(request,'pages/courses.html',{'programs': programs,'courses':courses})

    
    
    
def add_course(request):
    if request.method == 'POST':
        program_id = request.POST.get('program_name')
        course_name = request.POST.get('course_name')
        
        courseData = CourseGroup(
            name= course_name,
            program_id_id = program_id
        )
        
        courseData.save()
        return redirect(reverse('course_group:Index')) 
    else:
        return render(request, 'pages/courses.html')



def edit_course(request):
    
    Data = CourseGroup.objects.all()
    
    context = {
        'Data' : Data
    }
    
    return render(request, 'pages/courses.html',context)    


def update_course(request, course_id):
    course = get_object_or_404(CourseGroup, id=course_id)
    if request.method == 'POST':
        course.name = request.POST.get('course_name')
        program_id = request.POST.get('program_id')
        course.program_id = get_object_or_404(Programs, id=program_id)
        course.save()
        return redirect(reverse('course_group:Index'))
    else:
        programs = Programs.objects.all()
        return render(request, 'pages/courses.html', {'course': course, 'programs': programs})

