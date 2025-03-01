from django.urls import path
from gcbskp.download import views

app_name="download"

urlpatterns = [
    path('', views.download, name='download'),
]
