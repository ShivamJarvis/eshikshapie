# Generated by Django 2.0.2 on 2021-04-20 08:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('learning_system_app', '0004_user_profile_last_redeem_date'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user_profile',
            name='referral_code',
            field=models.CharField(blank=True, default='', max_length=10, null=True),
        ),
        migrations.AlterField(
            model_name='user_profile',
            name='referred_by_code',
            field=models.CharField(blank=True, default='', max_length=10, null=True),
        ),
    ]
