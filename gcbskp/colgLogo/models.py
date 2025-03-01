from django.db import models

class ColgLogo(models.Model):
    colg_logo=models.FileField(upload_to="logo/",max_length=2500,null=True,default=None)
    created_at=models.DateTimeField(auto_now=True)
