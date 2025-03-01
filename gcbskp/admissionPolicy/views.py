from django.shortcuts import render
from gcbskp.slider.models import Slider
from django.views.generic import TemplateView
from gcbskp.admissionPolicy.models import AdmissionPolicy
from gcbskp.offered_program.models import Programs
from django.core.paginator import Paginator
from gcbskp.admissionStatus.models import AdmissionStatus
from gcbskp.colgLogo.models import ColgLogo


def AdmissionDetails(request):
    Apply_Policy_Details = AdmissionPolicy.objects.all().order_by('id')
    OfferedProgramData = Programs.objects.all().order_by('id')
    admissionStatus = AdmissionStatus.objects.all()
    colg_logo = ColgLogo.objects.all()
    
    context = {
        'admission_details': Apply_Policy_Details,
        'ProgramData':  OfferedProgramData,
        'admissionStatus' : admissionStatus,
        'colg_logo' : colg_logo
    }
    return render(request, "pages/admission_policy.html", context)

def custom_admin_view(request):
    object_list = AdmissionPolicy.objects.all().order_by('id')
    paginator = Paginator(object_list, 5)  # 10 objects per page

    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    context = {
        'page_obj': page_obj,
    }
    return render(request, 'admin/custom_template.html', context)
# Create your views here.
