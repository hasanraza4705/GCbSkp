from django.db import models
from tinymce.models import HTMLField

class PopUpData(models.Model):
    pop_up_desc = models.CharField(max_length=1000)
    pop_up_link=HTMLField()
    created_at=models.DateTimeField(auto_now=True)
    class Status(models.TextChoices):
        Active = 'active', 'Active'
        In_Active = 'in_active', 'In Active'

    status = models.CharField(max_length=50, choices=Status.choices, default=Status.Active)
    
    
    
    
