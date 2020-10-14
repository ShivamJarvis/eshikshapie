# Generated by Django 3.1.1 on 2020-10-14 07:01

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('learning_system_app', '0011_enrolledcourse'),
    ]

    operations = [
        migrations.CreateModel(
            name='Review',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('review', models.TextField(max_length=400)),
                ('is_approved', models.BooleanField(default=False)),
                ('enrolled_course', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='learning_system_app.enrolledcourse')),
            ],
        ),
    ]
