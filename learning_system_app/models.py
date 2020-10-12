from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class Contact(models.Model):
    name = models.CharField(max_length=100,null=False,blank=False)
    phone = models.CharField(max_length=15,null=False,blank=False)
    email = models.CharField(max_length=100,null=False,blank=False)
    message = models.TextField(max_length=1000,null=False,blank=False)
    def __str__(self):
        return f'{self.name} : {self.phone}'

class user_profile(models.Model):
    student_id = models.CharField(max_length=30,null=False,blank=False)
    phone = models.CharField(max_length=15,null=False,blank=False)
    image = models.ImageField()
    school_name = models.CharField(max_length=100,null=True,blank=True)
    dob = models.DateField()
    session = models.CharField(max_length=40,blank=True,null=True)
    mother_name = models.CharField(max_length=100,null=True,blank=True)
    father_name = models.CharField(max_length=100,null=True,blank=True)
    address = models.TextField(max_length=500,null=False,blank=False)
    state = models.CharField(max_length=50,null=False,blank=False)
    city = models.CharField(max_length=50,null=False,blank=False)
    zip_code = models.CharField(max_length=50,null=False,blank=False)
    user = models.OneToOneField(User,on_delete=models.CASCADE)
