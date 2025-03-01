from django.shortcuts import render, get_object_or_404
from gcbskp.offered_program.models import Programs
from gcbskp.coursegroup.models import CourseGroup
from django.db.models import Q
from gcbskp.slider.models import Slider
from django.views.generic import TemplateView
from gcbskp.department.views import departmentData
from gcbskp.news.models import News
from gcbskp.offered_program.models import Programs
from gcbskp.review.models import Reviews
from django.core.paginator import Paginator
from django.urls import reverse
from django.shortcuts import render, redirect
from gcbskp.admissionStatus.models import AdmissionStatus
from gcbskp.colgLogo.models import ColgLogo


def program_detail(request, pk):
    program = get_object_or_404(Programs, pk=pk)
    course_groups = CourseGroup.objects.filter(program_id=program)
    OfferedProgramData = Programs.objects.all().order_by('id')
    admissionStatus = AdmissionStatus.objects.all()
    colg_logo = ColgLogo.objects.all()

    context = {
        'program': program,
        'course_groups': course_groups,
        'ProgramData':  OfferedProgramData,
        'admissionStatus' : admissionStatus,
        'colg_logo' : colg_logo
    }

    return render(request, 'pages/program_detail.html', context)


def custom_admin_view(request):
    object_list = Programs.objects.all().order_by('id')
    paginator = Paginator(object_list, 5)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    context = {
        'page_obj': page_obj,
    }
    return render(request, 'admin/custom_template.html', context)

def show_page_program(request):
    programs = Programs.objects.all()
    
    return render(request,'pages/offered_program.html',{"programData":programs})
 
    
def add_programs(request):
    if request.method == 'POST':
        program_name = request.POST.get('program_name')
        
        programData = Programs(
            heading=program_name,
        )
        
        programData.save()
        return redirect(reverse('offered_program:show_page_program')) 
    else:
       
        return render(request, 'pages/program.html') 
      

def edit_program(request):
    
    Data = Programs.objects.all()
    
    context = {
        'Data' : Data
    }
    
    return render(request, 'pages/program.html',context)     


def update_program(request,id):
    if request.method == 'POST':
        program_name = request.POST.get('program_name')
        
        programData = Programs(
            id=id,
            heading=program_name,
        )
        
        programData.save()
        return redirect(reverse('offered_program:show_page_program')) 
    else:
        
        return render(request, 'pages/program.html') 
    
    

