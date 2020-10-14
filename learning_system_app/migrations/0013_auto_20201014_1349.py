# Generated by Django 3.1.1 on 2020-10-14 08:19

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('learning_system_app', '0012_review'),
    ]

    operations = [
        migrations.AddField(
            model_name='review',
            name='user',
            field=models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, related_name='review_user', to='auth.user'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='review',
            name='enrolled_course',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='review_enrolled', to='learning_system_app.enrolledcourse'),
        ),
    ]
