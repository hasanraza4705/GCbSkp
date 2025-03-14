# Generated by Django 5.1.3 on 2024-11-12 19:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student_registration', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='registeredstudent',
            name='first_name',
        ),
        migrations.RemoveField(
            model_name='registeredstudent',
            name='last_name',
        ),
        migrations.AddField(
            model_name='registeredstudent',
            name='cnic_no',
            field=models.CharField(blank=True, max_length=20, null=True, unique=True),
        ),
        migrations.AddField(
            model_name='registeredstudent',
            name='confirm_email',
            field=models.EmailField(blank=True, max_length=254, null=True),
        ),
    ]
