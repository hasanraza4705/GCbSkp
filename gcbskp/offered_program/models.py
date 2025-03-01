from django.db import models
from tinymce.models import HTMLField
from django.conf import settings


class Programs(models.Model):
    heading = models.CharField(max_length=255) 
    short_description = HTMLField()
    image = models.FileField(upload_to="program_images/", max_length=250, null=True, default=None)
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    created_at = models.DateTimeField(auto_now_add=True)

    
    
    def __str__(self):
        return self.heading
