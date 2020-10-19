from django.db import models
from django.contrib.auth.models import User
import qrcode
from io import BytesIO
from django.core.files import File
from PIL import Image,ImageDraw
# Create your models here.

class Contact(models.Model):
    name = models.CharField(max_length=100,null=False,blank=False)
    phone = models.CharField(max_length=15,null=False,blank=False)
    email = models.CharField(max_length=100,null=False,blank=False)
    message = models.TextField(max_length=1000,null=False,blank=False)
    def __str__(self):
        return f'{self.name} : {self.phone}'

class LoggedInUser(models.Model):
    user = models.OneToOneField(User,on_delete=models.CASCADE,related_name='logged_in_user')
    session_key = models.CharField(max_length=32,null=True,blank=True)
    def __str__(self):
        return f'{self.id} {self.user.username}'

class user_profile(models.Model):
    student_id = models.CharField(max_length=30,null=False,blank=False)
    phone = models.CharField(max_length=15,null=False,blank=False)
    image = models.ImageField()
    image_qr = models.ImageField(blank=True)
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
    def __str__(self):
        return f"{self.user.first_name} {self.user.last_name}"

    def save(self,*args,**kwargs):
        qrcode_img = qrcode.make(f'{self.student_id}')
        canvas = Image.new('RGB',(290,290),'white')
        draw = ImageDraw.Draw(canvas)
        canvas.paste(qrcode_img)
        fname = f'qr_code{self.student_id}.png'
        buffer = BytesIO()
        canvas.save(buffer,'PNG')
        self.image_qr.save(fname,File(buffer),save=False)
        canvas.close()
        super().save(*args,**kwargs)

class Instructor(models.Model):
    instructor_id = models.CharField(max_length=30,null=False,blank=False)
    phone = models.CharField(max_length=15,null=False,blank=False)
    image = models.ImageField()
    image_qr = models.ImageField(blank=True)
    dob = models.DateField()
    address = models.TextField(max_length=500,null=False,blank=False)
    state = models.CharField(max_length=50,null=False,blank=False)
    city = models.CharField(max_length=50,null=False,blank=False)
    zip_code = models.CharField(max_length=50,null=False,blank=False)
    qualifications = models.CharField(max_length=500,null=False,blank=False)
    year_of_experience = models.CharField(max_length=300,null=False,blank=False)
    user = models.OneToOneField(User,on_delete=models.CASCADE)
    def __str__(self):
        return f"{self.user.first_name} {self.user.last_name}"

    def save(self,*args,**kwargs):
        qrcode_img = qrcode.make(f'{self.instructor_id}')
        canvas = Image.new('RGB',(290,290),'white')
        draw = ImageDraw.Draw(canvas)
        canvas.paste(qrcode_img)
        fname = f'qr_code{self.instructor_id}.png'
        buffer = BytesIO()
        canvas.save(buffer,'PNG')
        self.image_qr.save(fname,File(buffer),save=False)
        canvas.close()
        super().save(*args,**kwargs)

class Course(models.Model):
    course_name = models.CharField(max_length=300,null=False,blank=False)
    image = models.ImageField()
    curriculum = models.URLField(null=True,blank=True)
    price = models.FloatField()
    special_price = models.FloatField()
    description = models.TextField(max_length=1000,null=False,blank=False)
    mini_info = models.TextField(max_length=400,null=True,blank=True)
    duration = models.CharField(max_length=50)
    language = models.CharField(max_length=50,null=False,blank=False)
    prequisites = models.CharField(max_length=50,null=False,blank=False)
    has_certificate = models.BooleanField(default=False)
    instructor = models.ForeignKey(Instructor,on_delete=models.CASCADE)
    is_popular = models.BooleanField(default=False)
    def __str__(self):
        return f'{self.id} {self.course_name} by ({self.instructor.user.first_name} {self.instructor.user.last_name})'


class Subject(models.Model):
    subject_name = models.CharField(max_length=100,null=False,blank=False)
    course = models.ForeignKey(Course,on_delete=models.CASCADE,related_name='subject_course')
    instructor = models.ForeignKey(Instructor,on_delete=models.CASCADE,related_name='subject_instructor')
    def __str__(self):
        return f'{self.subject_name} by ({self.instructor.user.first_name} {self.instructor.user.last_name})'




class EnrolledCourse(models.Model):
    enroll_id = models.CharField(max_length=30,null=False,blank=False)
    course = models.ForeignKey(Course,on_delete=models.CASCADE,related_name='enrolled_course_detail')
    user = models.ForeignKey(User,on_delete=models.CASCADE,related_name='enrolled_user_detail')
    status = models.BooleanField(default=False)
    def __str__(self):
        return f'{self.enroll_id}'


class Review(models.Model):
    review = models.TextField(max_length=400,null=False,blank=False)
    enrolled_course = models.ForeignKey(EnrolledCourse,on_delete=models.CASCADE,related_name='review_enrolled')
    course = models.ForeignKey(Course,on_delete=models.CASCADE,related_name='review_course',blank=True,null=True)
    user = models.ForeignKey(User,on_delete=models.CASCADE,related_name='review_user')
    is_approved = models.BooleanField(default=False)


class Video(models.Model):
    title = models.CharField(max_length=200)
    url = models.CharField(max_length=200)
    description = models.TextField(max_length=2000)
    subject = models.ForeignKey(Subject,on_delete=models.CASCADE,null=True,blank=True,related_name='subject_video')
    course = models.ForeignKey(Course,on_delete=models.CASCADE,null=True,blank=True,related_name='course_video')
    resources = models.CharField(max_length=200,null=True,blank=True)
    def __str__(self):
        return f'{self.title} of ({self.subject.subject_name})'
    
class QuestionAnswer(models.Model):
    question = models.TextField(max_length=1000,null=False,blank=False)
    answer = models.TextField(max_length=1000,null=True,blank=True)
    user = models.ForeignKey(User,on_delete=models.CASCADE,related_name='user_question')
    video = models.ForeignKey(Video,on_delete=models.CASCADE,related_name='video_question')
    course = models.ForeignKey(Course,on_delete=models.CASCADE,related_name='course_question',blank=True,null=True)
    subject = models.ForeignKey(Subject,on_delete=models.CASCADE,related_name='subject_question',blank=True,null=True)


