from django.db import models

class AdmissionStatus(models.Model):
    created_at = models.DateTimeField(auto_now_add=True)
    class Status(models.TextChoices):
        Active = 'Active', 'Active'
        Pending = 'Pending', 'Pending'
    
        

    status = models.CharField(max_length=50, choices=Status.choices, null=True)
