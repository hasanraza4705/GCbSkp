from django.db import models
from tinymce.models import HTMLField
from django.conf import settings


class AdmissionSchedule(models.Model):
    title = models.CharField(max_length=255,blank=True)
    admission_detail= models.CharField(max_length=255)
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    note = HTMLField(blank=True)
    created_at = models.DateTimeField(auto_now=True)
    
    class Status(models.TextChoices):
        Morning = 'Morning', 'Morning'
        Evening = 'Evening', 'Evening'
        
        

    status = models.CharField(max_length=50, choices=Status.choices,default=Status.Morning)
   
    
    
    