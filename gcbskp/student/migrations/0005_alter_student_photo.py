# Generated by Django 5.1.3 on 2024-11-16 14:03

import gcbskp.student.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0004_remove_student_worker_department'),
    ]

    operations = [
        migrations.AlterField(
            model_name='student',
            name='photo',
            field=models.ImageField(blank=True, null=True, upload_to='std_photos/', validators=[gcbskp.student.models.validate_image_size]),
        ),
    ]
