# Generated by Django 3.1.1 on 2020-10-14 04:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('learning_system_app', '0008_course_curriculum'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='is_popular',
            field=models.BooleanField(default=False),
        ),
    ]