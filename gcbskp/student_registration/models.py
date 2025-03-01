from django.db import models

class RegisteredStudent(models.Model):
    Name = models.CharField(max_length=150)
    email = models.EmailField(unique=True)
    confirm_email = models.EmailField(null=True, blank=True)  # To store the confirmation email
    password = models.CharField(max_length=128)  # Store hashed password
    cnic_no = models.CharField(max_length=20, unique=True, null=True, blank=True)  # CNIC/B-form number
    
    def __str__(self):
        return self.username