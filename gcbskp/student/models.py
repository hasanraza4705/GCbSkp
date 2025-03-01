from django.db import models
from gcbskp.offered_program.models import Programs
from gcbskp.coursegroup.models import CourseGroup
from django.core.exceptions import ValidationError


# Custom image size validator
def validate_image_size(image):
    MAX_SIZE = 200 * 1024  # 200KB
    if image.size > MAX_SIZE:
        raise ValidationError(f"The image size must be less than {MAX_SIZE / 1024}KB")

class Student(models.Model):
    # Personal Information
    name = models.CharField(max_length=255, null=True, blank=False)
    cnic_no = models.CharField(max_length=20, default='Not Provided') 
    photo = models.ImageField(upload_to='std_photos/', blank=True, null=True)
    date_of_birth = models.DateField(null=True, blank=False)
    mobile_no = models.CharField(max_length=15, null=True, blank=False)
    email = models.EmailField(null=True, blank=False)

    # Father Information
    father_name = models.CharField(max_length=255, null=True, blank=False)
    father_cnic = models.CharField(max_length=20, null=True, blank=False)
    father_mobile_no = models.CharField(max_length=15, null=True, blank=False)
    father_occupation = models.CharField(max_length=255, null=True, blank=False)

    # Guardian Information
    guardian_name = models.CharField(max_length=255, null=True, blank=False)
    guardian_cnic = models.CharField(max_length=20, null=True, blank=False)
    guardian_contact_no = models.CharField(max_length=15, null=True, blank=False)

    # Address Information
    permanent_address = models.TextField(null=True, blank=False)
    postal_address = models.TextField(null=True, blank=False)

    # Other Information
    province = models.CharField(max_length=100, null=True, blank=False)
    district = models.CharField(max_length=100, null=True, blank=False)
    city = models.CharField(max_length=100, null=True, blank=False)
    gender = models.CharField(max_length=10, null=True, blank=False)
    religion = models.CharField(max_length=50, null=True, blank=False)
    hafiz_e_quran = models.BooleanField(default=False, null=True, blank=False)
    hafiz_doc = models.FileField(upload_to='hafiz_doc/', blank=True, null=True)
    blood_group = models.CharField(max_length=10, default='Unknown', null=False, blank=False)
    marital_status = models.CharField(max_length=10, null=True, blank=False)
    disability_status = models.BooleanField(default=False, null=True, blank=False)
    disability_type = models.CharField(default='NO', max_length=100,null=True,blank=True)

    # Worker Details (Optional)
    related_to_worker = models.BooleanField(default=False)
    worker_name = models.CharField(max_length=255, blank=True, null=True)
    worker_relation = models.CharField(max_length=30, blank=True, null=True)
    worker_payscale = models.CharField(max_length  = 50, blank= True,null=True)
    worker_status = models.BooleanField(default=False, null=True,blank=True)

    created_at = models.DateField(auto_now=True)

    user_id = models.CharField(max_length=50, null=False, blank=False,default=0)  # Assuming user_id is a CharField
    verifiy_status = models.CharField(max_length=50, null=True, blank=False)
    merit_lit_status= models.CharField(max_length=50, null=True, blank=False)


class Application(models.Model):
    ADMISSION_STATUS_CHOICES = [
        ('pending', 'Pending'),
        ('accepted', 'Accepted'),
        ('rejected', 'Rejected'),
    ]

    program = models.ForeignKey(Programs, on_delete=models.CASCADE)
    course_groups = models.ManyToManyField(CourseGroup)
    admission_status = models.CharField(max_length=10, choices=ADMISSION_STATUS_CHOICES, default='pending')
    prospectus_fee = models.IntegerField(default=0)
    user_id = models.IntegerField(null=False, blank=False,default=0)

    applied_date = models.DateTimeField(auto_now_add=True)
    

    def __str__(self):
        return f"Application for {self.program} - {self.admission_status}"



class Province(models.Model):
    province = models.CharField(max_length = 200)




class District(models.Model):
    district = models.CharField(max_length = 200)




    