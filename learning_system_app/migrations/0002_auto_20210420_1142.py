# Generated by Django 2.0.2 on 2021-04-20 06:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('learning_system_app', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='user_profile',
            name='referral_code',
            field=models.CharField(default='', max_length=10),
        ),
        migrations.AddField(
            model_name='user_profile',
            name='referred_by_code',
            field=models.CharField(default='', max_length=10),
        ),
    ]
