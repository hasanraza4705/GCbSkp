from django.db import models
from tinymce.models import HTMLField
from django.conf import settings

class ApplyOnline(models.Model):
    heading = models.CharField(max_length=255,blank=True) 
    description = HTMLField()
    image = models.FileField(upload_to="common_images/", max_length=250, null=True, blank=True, default=None)
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    created_at = models.DateTimeField(auto_now_add=True)
   
    def plain_description(self):
        return strip_tags(self.description)
    
    