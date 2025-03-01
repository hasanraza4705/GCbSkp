# gcbskp/news/urls.py
from django.urls import path
from gcbskp.news.views import NewsData

app_name = "news"

urlpatterns = [
    path("", view=NewsData, name="NewsData"),
]
