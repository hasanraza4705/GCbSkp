from gcbskp.offered_program.models import Programs
from django.shortcuts import render
from django.views.generic import TemplateView
from gcbskp.news.models import News
from django.core.paginator import Paginator
from gcbskp.colgLogo.models import ColgLogo
from gcbskp.admissionStatus.models import AdmissionStatus

def NewsData(request):
    NewsData = News.objects.all().order_by('-created_at')
    OfferedProgramData = Programs.objects.all().order_by('id')
    colg_logo = ColgLogo.objects.all()
    admissionStatus = AdmissionStatus.objects.all()
    context = {
        'NewsData': NewsData,
        'ProgramData':  OfferedProgramData,
        'colg_logo' : colg_logo,
        'admissionStatus' : admissionStatus,
    }
   
    return render(request,"pages/news.html",context)

def custom_admin_view(request):
    object_list = News.objects.all().order_by('id')
    paginator = Paginator(object_list, 5)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    context = {
        'page_obj': page_obj,
    }
    return render(request, 'admin/custom_template.html', context)
