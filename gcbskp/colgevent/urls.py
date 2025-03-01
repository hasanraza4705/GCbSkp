from django.urls import path
from gcbskp.colgevent.views import EventDetails 

app_name = "events"

urlpatterns = [
    path("", view=EventDetails, name="EventDetails"),

]

