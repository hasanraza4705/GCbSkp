from django.db import models
from tinymce.models import HTMLField
from django.conf import settings

class Reviews(models.Model):
    name = models.CharField(max_length=255)  # Assuming news_heading stores the department name
    message = HTMLField()
    image = models.FileField(upload_to="program_images/", max_length=250, null=True, default=None)
    designation = models.CharField(max_length=200)
    created_at = models.DateTimeField(auto_now_add=True)
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
