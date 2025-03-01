from django.shortcuts import render
from gcbskp.download.models import Download
from gcbskp.offered_program.models import Programs
from django.core.paginator import Paginator
from gcbskp.admissionStatus.models import AdmissionStatus
from gcbskp.colgLogo.models import ColgLogo

def download(request):
    # Get all downloads ordered by status, title, and created_at
    downloads = Download.objects.all().order_by('status', 'title', 'created_at')
    OfferedProgramData = Programs.objects.all().order_by('id')
    admissionStatus = AdmissionStatus.objects.all()
    colg_logo = ColgLogo.objects.all()
    
    # Create a dictionary to categorize downloads by their status
    download_categories = {}
    for download in downloads:
        if download.get_status_display() not in download_categories:
            download_categories[download.get_status_display()] = []
        download_categories[download.get_status_display()].append(download)

    context = {
        'ProgramData': OfferedProgramData,
        'download_categories': download_categories,
        'admissionStatus' : admissionStatus,
        'colg_logo' : colg_logo
    }
    return render(request, 'pages/download.html', context)



def custom_admin_view(request):
    object_list = Download.objects.all().order_by('id')
    paginator = Paginator(object_list, 5)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    context = {
        'page_obj': page_obj,
    }
    return render(request, 'admin/custom_template.html', context)
