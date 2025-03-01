from django.shortcuts import render
from gcbskp.slider.models import Slider
from django.views.generic import TemplateView
from gcbskp.admissionDetails.models import AdmissionSchedule
from gcbskp.offered_program.models import Programs
from django.core.paginator import Paginator
from gcbskp.admissionStatus.models import AdmissionStatus
from gcbskp.colgLogo.models import ColgLogo

def admissionSchedule(request):
    schedules = AdmissionSchedule.objects.all().order_by('id')
    morning_schedules = schedules.filter(status='Morning')
    evening_schedules = schedules.filter(status='Evening')
    OfferedProgramData = Programs.objects.all().order_by('id')
    admissionStatus = AdmissionStatus.objects.all()
    colg_logo = ColgLogo.objects.all()
    

    context = {
        'schedules': schedules,
        'morning_schedules': morning_schedules,
        'evening_schedules': evening_schedules,
        'ProgramData':  OfferedProgramData,
        'admissionStatus' : admissionStatus,
        'colg_logo' : colg_logo
    }
    return render(request, "pages/admission_schedule.html", context)

def custom_admin_view(request):
    object_list = AdmissionSchedule.objects.all().order_by('id')
    paginator = Paginator(object_list, 5) 

    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    context = {
        'page_obj': page_obj,
    }
    return render(request, 'admin/custom_template.html', context)

