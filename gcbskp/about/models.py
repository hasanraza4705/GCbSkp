from django.db import models
from tinymce.models import HTMLField
from django.conf import settings

class About(models.Model):
    heading = models.CharField(max_length=255)  
    description = HTMLField()
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    created_at = models.DateTimeField(auto_now_add=True)
    
    
    