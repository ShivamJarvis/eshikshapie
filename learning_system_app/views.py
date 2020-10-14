from django.shortcuts import render,HttpResponse,redirect
import requests
import json
from learning_system_app.utils import generate_token
from django.core.mail import send_mail
from django.conf import settings
from django.contrib.auth.models import User
from django.contrib.auth import login,logout,authenticate
from django.core.files.storage import FileSystemStorage
from django.template.loader import render_to_string
from django.utils.http import urlsafe_base64_decode,urlsafe_base64_encode
from django.contrib.sites.shortcuts import get_current_site
from django.utils.encoding import force_bytes,force_text,DjangoUnicodeDecodeError
from .utils import generate_token
from learning_system_app.models import Contact,user_profile,Course,Instructor,EnrolledCourse,Review,Video
import pyqrcode 
import png 
from pyqrcode import QRCode
from .Paytm import Checksum
from django.views.decorators.csrf import csrf_exempt
from django.http import JsonResponse
# Create your views here.

MERCHANT_KEY = "7Gg9YJuMubv@MHim"

def index(request):
    enroll = EnrolledCourse.objects.all()
    for en in enroll:
        if not en.status:
            en.delete()
    courses = Course.objects.filter(is_popular=True).all()
    context = {
        'courses':courses
    }
    return render(request,'lms/index.html',context)

def about(request):
    return render(request,'lms/about.html')

def register(request):
    last_student_no = user_profile.objects.all().order_by('id').last()
    if not last_student_no:
        user_id =  'ESKP' + '000001'
    else:
        student_no = last_student_no.student_id
        student_no_int = int(student_no[4:10])
        new_student_no_int = student_no_int + 1
        user_id = 'ESKP'  + str(new_student_no_int).zfill(6)
    if request.method == 'POST' and request.FILES['image']:
        f_name = request.POST['f_name']
        l_name = request.POST['l_name']
        mother_name = request.POST['mother_name']
        father_name = request.POST['father_name']
        email = request.POST['email']
        phone = request.POST['phone']
        username = request.POST['username']
        state = request.POST['state']
        city = request.POST['city']
        address = request.POST['address']
        zip_code = request.POST['zip']
        pass1 = request.POST['pass1']
        pass2 = request.POST['pass2']
        dob = request.POST['dob']
        clientkey = request.POST['g-recaptcha-response']
        secretkey = '6LeqZ9YZAAAAAL6jLRiF1M9G7v59iuNYSvThQxSB'
        captchaData = {
            "secret":secretkey,
            "response":clientkey
        }
        r = requests.post('https://www.google.com/recaptcha/api/siteverify',data=captchaData)
        response = json.loads(r.text)
        verify = response['success']
        if verify:
            if pass1 == pass2:
                myfile = request.FILES['image']
                fs = FileSystemStorage()
                filename = fs.save(myfile.name,myfile)
                url = fs.url(filename)
                new_user = User.objects.create_user(first_name=f_name,username=username,last_name=l_name,email=email,is_active=False,password=pass1)
                
                new_user_profile = user_profile(phone=phone,image=url,student_id=user_id,school_name='',dob=dob,session='',mother_name=mother_name,father_name=father_name,address=address,state=state,city=city,zip_code=zip_code,user=new_user)
                new_user_profile.save()
                current_site = get_current_site(request).domain
                subject = "Activate Your Account"
                from_email = settings.EMAIL_HOST_USER
                to_mail = [request.POST['email']]
                
                message = render_to_string('lms/activate.html',
                {
                    'user':new_user,
                    'domain':current_site,
                    'uid':urlsafe_base64_encode(force_bytes(new_user.pk)),
                    'token':generate_token.make_token(new_user)

                }
                )
                send_mail(subject,message,from_email,to_mail,fail_silently=True)
                return redirect('register')
    context = {
        'user_id':user_id
    }
    return render(request,'lms/register.html',context)

def activate(request,uidb64,token):
    try:
        uid = force_text(urlsafe_base64_decode(uidb64))
        user = User.objects.get(pk=uid)
        if user and generate_token.check_token(user,token):
            user.is_active = True
            user.save()
            
            
            return redirect('index')
    except:
        return redirect('handle_login')

def handle_login(request):
    if request.method == 'POST':
        clientkey = request.POST['g-recaptcha-response']
        secretkey = '6LeqZ9YZAAAAAL6jLRiF1M9G7v59iuNYSvThQxSB'
        captchaData = {
            "secret":secretkey,
            "response":clientkey
        }
        r = requests.post('https://www.google.com/recaptcha/api/siteverify',data=captchaData)
        response = json.loads(r.text)
        verify = response['success']
        if verify:
            name = request.POST['username']
            password = request.POST['password']
            user = authenticate(username=name,password=password)
            if user:
                login(request,user)
                return redirect('index')
    return render(request,'lms/login.html')

def handle_logout(request):
    logout(request)
    return redirect('index')

def contact(request):

    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        phone = request.POST['phone']
        message = request.POST['message']
        
        new_contact = Contact(name=name,phone=phone,email=email,message=message)
        new_contact.save()
        subject = "Eshiksha Pie"
        message = "Thanks For Contacting Us "+name+". We will get in touch with you within 24 hours."
        from_email = settings.EMAIL_HOST_USER
        to_mail = [email]
        send_mail(subject,message,from_email,to_mail,fail_silently=True)
    return render(request,'lms/contact.html')

def course_details(request,course_name,course_id):
    course = Course.objects.filter(id=course_id).first()
    video = Video.objects.filter(course__id=course_id).first()
    enrolled_course = EnrolledCourse.objects.filter(user=request.user).filter(course=course).first()
    reviews = Review.objects.filter(enrolled_course=enrolled_course).all()
  
       
   
    context = {
        'video':video,
        'course':course,
        'enrolled' : enrolled_course,
        'reviews':reviews
    }
    return render(request,'lms/course-detail.html',context)


def enroll_to_course(request,course_id,course_name):
    last_enroll_no = EnrolledCourse.objects.all().order_by('id').last()
    if not last_enroll_no:
        enroll_id =  'ENCID' + '000001'
    else:
        enroll_no = last_enroll_no.enroll_id
        enroll_no_int = int(enroll_no[5:11])
        new_enroll_no_int = enroll_no_int + 1
        enroll_id = 'ENCID'  + str(new_enroll_no_int).zfill(6)
    course = Course.objects.filter(id=course_id).first()
    new_enroll = EnrolledCourse(course=course,user=request.user,enroll_id=enroll_id)
    new_enroll.save()
    user = request.user.email
    param_dict = {
    'MID': 'fikOkF17976878422958',
    'ORDER_ID': str(enroll_id),
    'TXN_AMOUNT': f"{course.special_price}",
    'CUST_ID': user,
    'INDUSTRY_TYPE_ID': 'Retail',
    'WEBSITE': 'WEBSTAGING',
    'CHANNEL_ID': 'WEB',
    'CALLBACK_URL':'http://127.0.0.1:8000/handlerequest/',
    }
    
    param_dict['CHECKSUMHASH'] = Checksum.generate_checksum(param_dict, MERCHANT_KEY)

    return render(request=request, template_name="lms/paytm.html", context={'param_dict':param_dict})
    return redirect('index')


@csrf_exempt
def handle_request(request):
    form = request.POST
    enroll_id = form.get('ORDERID')
    enroll = EnrolledCourse.objects.filter(enroll_id=enroll_id).first()

    response_dict = {}
    for i in form.keys():
        response_dict[i] = form[i]
        if i == 'CHECKSUMHASH':
            checksum = form[i]
            verify = Checksum.verify_checksum(response_dict, MERCHANT_KEY, checksum)
            if verify:
                if response_dict['RESPCODE'] == '01':
                   enroll.status = True
                   enroll.save()
                else:
                    enroll.delete()
    
      
    return render(request, 'lms/paymentstatus.html', {'response': response_dict})


def video_playlist(request,course_name,course_id,video_id):
    videos = Video.objects.filter(course__id=course_id).all()
    current_video = Video.objects.filter(id=video_id).first()
    context = {
        'current_video':current_video,
        'videos':videos,
        'course_name':course_name
    }
    return render(request,'lms/video-playlist.html',context)

def dashboard_student(request):
    return render(request,'lms/layout.html')


def dashboard_enrolled_courses(request):
    enroll_courses = EnrolledCourse.objects.filter(user=request.user).all()
    information = []
    for content in enroll_courses:
        review = Review.objects.filter(enrolled_course=content).first()
        if review:
            information.append({'enroll':content,'review':True})
        else:
            information.append({'enroll':content,'review':False})
        

    context = {
        'enroll_courses':information
    }
    return render(request,'lms/enrolled_course_dashboard.html',context)


def submit_reviews(request,enroll_id):
    if request.method == 'POST':
        review = request.POST['review']
        enroll_course = EnrolledCourse.objects.filter(id=enroll_id).first()
        new_review = Review(review=review,enrolled_course=enroll_course,user=request.user)
        new_review.save()
    return redirect('dashboard_enrolled_courses')


def student_profile(request):
    user_id = request.user.id
    user = User.objects.filter(id=user_id).first()
    context = {
        'user':user
        
    }
    return render(request,'lms/dashboard-student.html',context)