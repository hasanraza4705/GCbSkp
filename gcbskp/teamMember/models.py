from django.db import models
from tinymce.models import HTMLField
from django.conf import settings

class TeamMember(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=200)
    designation = models.CharField(max_length=200)
    image = models.FileField(upload_to="team_members/", max_length=250, null=True, default=None)
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    created_at = models.DateTimeField(auto_now=True)
    
