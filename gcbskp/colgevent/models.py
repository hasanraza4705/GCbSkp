from django.db import models
from tinymce.models import HTMLField
from django.conf import settings

class ColgEvent(models.Model):
    event_title = models.CharField(max_length=255)  
    image = models.FileField(upload_to="event_images/", max_length=250, null=True, default=None)
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    created_at = models.DateTimeField(auto_now_add=True)

    
    def __str__(self):
        return self.event_title
