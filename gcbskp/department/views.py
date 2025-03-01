from django.shortcuts import render
from gcbskp.department.models import Department
from django.views.generic import TemplateView
from django.core.paginator import Paginator



def departmentData(request):
    DepartmentData = Department.objects.all().order_by('id')
    context = {
        'DepartmentData':DepartmentData,
    }
   
    return render(request,"pages/home.html",context)


def custom_admin_view(request):
    object_list = Department.objects.all().order_by('id')
    paginator = Paginator(object_list, 5)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    context = {
       'page_obj': page_obj,
    }
    return render(request, 'admin/custom_template.html', context)


