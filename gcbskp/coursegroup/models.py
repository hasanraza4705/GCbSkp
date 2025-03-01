from django.db import models
from tinymce.models import HTMLField
from gcbskp.offered_program.models import Programs
from django.conf import settings

    
class CourseGroup(models.Model):
    name = models.CharField(max_length=100)
    short_description = HTMLField()
    program_id = models.ForeignKey(Programs, on_delete=models.CASCADE, default='1')
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    created_at = models.DateTimeField(auto_now=True)

    
    
    def __str__(self):
        return self.name

