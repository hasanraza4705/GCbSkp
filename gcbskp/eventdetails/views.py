from django.shortcuts import render, get_object_or_404
from gcbskp.colgevent.models import ColgEvent
from gcbskp.eventdetails.models import EventItem
from gcbskp.eventdetails.models import EventItemImage
from gcbskp.offered_program.models import Programs
from django.core.paginator import Paginator
from gcbskp.admissionStatus.models import AdmissionStatus
from gcbskp.colgLogo.models import ColgLogo

def EventDetailsView(request, event_id):
    event = get_object_or_404(ColgEvent, id=event_id)
    event_items = EventItem.objects.filter(event=event)
    OfferedProgramData = Programs.objects.all().order_by('id')
    admissionStatus = AdmissionStatus.objects.all()
    colg_logo = ColgLogo.objects.all()

    context = {
        'event': event,
        'event_items': event_items,
        'ProgramData':  OfferedProgramData,
        'admissionStatus' : admissionStatus,
        'colg_logo' : colg_logo
    }
    return render(request, 'pages/event_detail.html', context)


def custom_admin_view(request):
    object_list = EventItem.objects.all().order_by('id')
    paginator = Paginator(object_list, 5)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    context = {
        'page_obj': page_obj,
    }
    return render(request, 'admin/custom_template.html', context)
