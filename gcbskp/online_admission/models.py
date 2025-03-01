from django.db import models

class AcademicRecord(models.Model):
    class_name = models.CharField(max_length=100)
    year = models.CharField(max_length=4)
    board = models.CharField(max_length=100)
    obtain_marks = models.IntegerField()
    total_marks = models.IntegerField()
    grade = models.CharField(max_length=2)
    percentage = models.FloatField(null=True, blank=True)
    user_id = models.IntegerField(null=True, blank=True)
    application_id = models.IntegerField(null=True,blank=True)
    # models.EmailField( max_length=254,p)

    def __str__(self):
        return f"{self.class_name} - {self.year}"
    
    
class Subject(models.Model):
    form_data_id = models.IntegerField(blank=True,null=True)
    subject_name = models.CharField(max_length=100)
    obtain_marks = models.IntegerField()
    total_marks = models.IntegerField()
    user_id = models.IntegerField(null=True, blank=True)

    def __str__(self):
        return f"{self.subject_name} - {self.obtain_marks}/{self.total_marks}"   
    
    
class AdmissionInstruction(models.Model):
    instruction = models.CharField(max_length=2000)
    user_id = models.IntegerField(null=True,blank=True)
   
   
class Country(models.Model):
    id = models.BigAutoField(primary_key=True)
    iso = models.CharField(max_length=255)
    country_name = models.CharField(max_length=255)
    nicename = models.CharField(max_length=255)
    iso3 = models.CharField(max_length=255)
    phonecode = models.CharField(max_length=255)
    numcode = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, null=True)

    class Meta:
        db_table = 'countries'       
