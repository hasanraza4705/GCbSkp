# Generated by Django 5.1.3 on 2024-11-12 04:57

import tinymce.models
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='ApplyOnline',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('heading', models.CharField(blank=True, max_length=255)),
                ('description', tinymce.models.HTMLField()),
                ('image', models.FileField(blank=True, default=None, max_length=250, null=True, upload_to='common_images/')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
            ],
        ),
    ]
