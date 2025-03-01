from django.db import models
from gcbskp.department.models import Department
from django.conf import settings



class FacultyRecord(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=200)
    designation = models.CharField(max_length=200)
    image = models.FileField(upload_to="teacher_images/", max_length=250, null=True, default=None)
    user_id = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    department_name = models.ForeignKey(Department, on_delete=models.CASCADE, default='1')
    created_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return self.department_name.dept_name
