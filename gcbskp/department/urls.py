from django.urls import path
from gcbskp.department.views import departmentData

app_name = "department"

urlpatterns = [
    path("", view=departmentData, name="sliderData"),
]