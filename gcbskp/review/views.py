from django.shortcuts import render
from gcbskp.review.models import Reviews
from django.core.paginator import Paginator


def custom_admin_view(request):
    object_list = Reviews.objects.all().order_by('id')
    paginator = Paginator(object_list, 5)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    context = {
        'page_obj': page_obj,
    }
    return render(request, 'admin/custom_template.html', context)

# Create your views here.
