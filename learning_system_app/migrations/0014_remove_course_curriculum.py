# Generated by Django 3.1.1 on 2020-11-11 08:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('learning_system_app', '0013_video_is_free'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='course',
            name='curriculum',
        ),
    ]