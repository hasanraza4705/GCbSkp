from django.urls import path
from gcbskp.teamMember.views import AboutDetails

app_name = "about"

urlpatterns = [
    path("", view=AboutDetails, name="AboutDetails"),
]