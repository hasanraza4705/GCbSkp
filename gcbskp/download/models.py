from django.db import models
from django.conf import settings

class Download(models.Model):
    title = models.CharField(max_length=255,null=True)
    file = models.FileField(upload_to='download/')
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    created_at = models.DateField(auto_now=True)
    
    class Status:
        General = 'general'
        TimeTable = 'timetable'
        DateSheet = 'datesheet'
        Notification = 'notification'
        GeneralOrder = 'general_order'
        
        STATUS_CHOICES = [
            (General, 'General'),
            (TimeTable, 'TimeTable'),
            (DateSheet, 'DateSheet'),
            (Notification,'Notification'),
            (GeneralOrder,'General Order'),
        ]
        
    status = models.CharField(
        max_length=20,
        choices=Status.STATUS_CHOICES,
        default=Status.General,
    )
    
    
    
