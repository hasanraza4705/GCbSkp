from django.urls import path
from gcbskp.slider.views import sliderData

app_name = "home"

urlpatterns = [
    path("", view=sliderData, name="sliderData"),
]
