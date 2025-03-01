from django.urls import path
from gcbskp.applyOnlineStep.views import ApplyDetails

app_name = "apply-details"

urlpatterns = [
    path("", view=ApplyDetails, name="ApplyDetails"),
]