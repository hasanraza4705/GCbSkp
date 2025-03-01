from django.db import models
from tinymce.models import HTMLField
from gcbskp.coursegroup.models import CourseGroup
from gcbskp.offered_program.models import Programs
from django.conf import settings


class AdmissionPolicy(models.Model):
    program = models.ForeignKey(Programs, on_delete=models.CASCADE, null=True, blank=True)
    coursegroup = models.ForeignKey(CourseGroup, on_delete=models.CASCADE, null=True, blank=True)
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    description = HTMLField(blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    
    class Status(models.TextChoices):
        Morning = 'Morning', 'Morning'
        Evening = 'Evening', 'Evening'
        General = 'General', 'General'
        

    status = models.CharField(max_length=50, choices=Status.choices, null=True)
   
    
    
    