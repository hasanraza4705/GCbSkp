from django.urls import path
from gcbskp.meritlist.views import merit_list_view

app_name = "merit-list"

urlpatterns = [
    path("", view=merit_list_view, name="merit_list_view"),
]