import os
from django.db.models.signals import post_delete
from django.dispatch import receiver
from django.conf import settings
from gcbskp.offered_program.models import Programs

@receiver(post_delete, sender=Programs)
def delete_image_file(sender, instance, **kwargs):
    if instance.image:
        if os.path.isfile(instance.image.path):
            os.remove(instance.image.path)
