from django.db import models
from gcbskp.colgevent.models import ColgEvent
from tinymce.models import HTMLField
from django.conf import settings


class EventItem(models.Model):
    event = models.ForeignKey(ColgEvent, on_delete=models.CASCADE)
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    description = HTMLField()

    # def __str__(self):
    #     return self.description[:50]  # Display first 50 characters of description

class EventItemImage(models.Model):
    event_item = models.ForeignKey(EventItem, related_name='images', on_delete=models.CASCADE)
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    image = models.ImageField(upload_to='event_images/',max_length=250, null=True, default=None)

    def __str__(self):
        return self.image.name
