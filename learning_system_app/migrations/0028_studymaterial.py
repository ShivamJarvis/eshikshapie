# Generated by Django 3.1.1 on 2020-10-22 05:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('learning_system_app', '0027_category'),
    ]

    operations = [
        migrations.CreateModel(
            name='StudyMaterial',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('study_file', models.CharField(blank=True, max_length=200, null=True)),
                ('answer_file', models.CharField(blank=True, max_length=200, null=True)),
                ('class_level', models.IntegerField()),
                ('chapter_no', models.IntegerField()),
            ],
        ),
    ]