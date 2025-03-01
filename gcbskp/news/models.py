from django.db import models
from tinymce.models import HTMLField
from django.conf import settings

class News(models.Model):
    news_heading = models.CharField(max_length=255)  
    news_description = HTMLField()
    news_image = models.FileField(upload_to="news_images/", max_length=250, null=True, default=None)
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    created_at = models.DateTimeField(auto_now_add=True)
    class Status(models.TextChoices):
        Intermediate = 'Intermediate', 'Intermediate'
        Graduation = 'Graduation', 'Graduation'
        General = 'General', 'General'

    status = models.CharField(max_length=50, choices=Status.choices, default=Status.General)
    
    
    
    