from django.db import models
from tinymce.models import HTMLField
from django.conf import settings

class Slider(models.Model):
    slider_heading=HTMLField()
    slider_image=models.FileField(upload_to="slider_images/",max_length=250,null=True,default=None)
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    created_at=models.DateTimeField(auto_now=True)



