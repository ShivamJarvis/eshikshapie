# Generated by Django 3.1.1 on 2020-10-13 08:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('learning_system_app', '0003_auto_20201012_1551'),
    ]

    operations = [
        migrations.AddField(
            model_name='user_profile',
            name='image_qr',
            field=models.ImageField(default='', upload_to=''),
            preserve_default=False,
        ),
    ]
