from django.db import models
from django.conf import settings


class Department(models.Model):
    dept_name=models.CharField(max_length=100)
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    created_at=models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.dept_name
    
    

