from django.urls import path
from gcbskp.admissionPolicy.views import AdmissionDetails

app_name = "admission-details"

urlpatterns = [
    path("", view=AdmissionDetails, name="AdmissionDetails"),
]