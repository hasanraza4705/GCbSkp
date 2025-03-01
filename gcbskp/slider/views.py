from django.shortcuts import render
from gcbskp.slider.models import Slider
from django.views.generic import TemplateView
from gcbskp.department.views import departmentData
from gcbskp.news.models import News
from gcbskp.offered_program.models import Programs
from gcbskp.review.models import Reviews
from django.core.paginator import Paginator
from gcbskp.admissionStatus.models import AdmissionStatus
from gcbskp.PopUpData.models import PopUpData
from gcbskp.colgLogo.models import ColgLogo
 

def sliderData(request):
    SliderData = Slider.objects.all()
    OfferedProgramData = Programs.objects.all().order_by('id')
    ReviewData = Reviews.objects.all().order_by('id')
    # Fetch all unique department names
    departments = News.objects.values_list('status', flat=True).distinct()
    admissionStatus = AdmissionStatus.objects.all()
    popUpData = PopUpData.objects.filter(status = PopUpData.Status.Active)
    colg_logo = ColgLogo.objects.all()

    # Create a dictionary to hold the latest news per department
    latest_news = {}
    for dept in departments:
           # Get the latest news for each department
        latest_news[dept] = News.objects.filter(status=dept).order_by('-created_at').first()
    context = {
        'SliderData': SliderData,
        'latest_news': latest_news,
        'ProgramData':  OfferedProgramData,
        'ReviewData' : ReviewData,
        'admissionStatus' : admissionStatus,
        'popUpData' : popUpData,
        'colg_logo' : colg_logo
    }
   
    return render(request,"pages/home.html",context)


def custom_admin_view(request):
    object_list = Reviews.objects.all().order_by('id')
    paginator = Paginator(object_list, 5)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    context = {
        'page_obj': page_obj,
    }
    return render(request, 'admin/custom_template.html', context)
