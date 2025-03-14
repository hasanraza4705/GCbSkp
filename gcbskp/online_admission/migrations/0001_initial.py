# Generated by Django 5.1.3 on 2024-11-12 04:57

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AdmissionInstruction',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('instruction', models.CharField(max_length=2000)),
                ('user_id', models.IntegerField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Country',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('iso', models.CharField(max_length=255)),
                ('country_name', models.CharField(max_length=255)),
                ('nicename', models.CharField(max_length=255)),
                ('iso3', models.CharField(max_length=255)),
                ('phonecode', models.CharField(max_length=255)),
                ('numcode', models.CharField(max_length=255)),
                ('created_at', models.DateTimeField(auto_now_add=True, null=True)),
                ('updated_at', models.DateTimeField(auto_now=True, null=True)),
            ],
            options={
                'db_table': 'countries',
            },
        ),
        migrations.CreateModel(
            name='FormData',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('class_name', models.CharField(max_length=100)),
                ('year', models.CharField(max_length=4)),
                ('board', models.CharField(max_length=100)),
                ('obtain_marks', models.IntegerField()),
                ('total_marks', models.IntegerField()),
                ('grade', models.CharField(max_length=2)),
                ('percentage', models.FloatField(blank=True, null=True)),
                ('user_id', models.IntegerField(blank=True, null=True)),
                ('application_id', models.IntegerField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Subject',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('form_data_id', models.IntegerField(blank=True, null=True)),
                ('subject_name', models.CharField(max_length=100)),
                ('obtain_marks', models.IntegerField()),
                ('total_marks', models.IntegerField()),
                ('user_id', models.IntegerField(blank=True, null=True)),
            ],
        ),
    ]
