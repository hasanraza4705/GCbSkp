from django.urls import path
from gcbskp.admissionDetails.views import admissionSchedule

app_name = "admission-schedule"

urlpatterns = [
    path("", view=admissionSchedule, name="admissionSchedule"),
]