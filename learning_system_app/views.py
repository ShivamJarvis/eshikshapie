from django.shortcuts import render,HttpResponse,redirect
import requests
import json
from django.urls import reverse
import pandas as pd
from learning_system_app.utils import generate_token
from django.core.mail import send_mail,EmailMessage
from django.conf import settings
from django.contrib import messages
from django.contrib.auth.models import User
from django.contrib.auth import login,logout,authenticate
from django.core.files.storage import FileSystemStorage
from django.template.loader import render_to_string
from django.utils.http import urlsafe_base64_decode,urlsafe_base64_encode
from django.contrib.sites.shortcuts import get_current_site
from django.utils.encoding import force_bytes,force_text,DjangoUnicodeDecodeError
from .utils import generate_token
from learning_system_app.models import Contact,user_profile,Course,Instructor,EnrolledCourse,Review,Video,QuestionAnswer,Subject,Category,StudyMaterial,CategoryName
from django.views.decorators.csrf import csrf_exempt
from django.http import JsonResponse
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator,EmptyPage

from datetime import datetime
from dateutil.relativedelta import relativedelta
import razorpay
# Create your views here.

def error_404_view(request,exception):
    return render(request,'lms/404.html')

def index(request):
    
    category = CategoryName.objects.all()
  
    courses = Course.objects.filter(is_popular=True).all()
    context = {
        'courses':courses,
        'category':category
    }
    return render(request,'lms/index.html',context)

def about(request):
    category_names = CategoryName.objects.all()
    context = {
        'category':category_names
    }
    return render(request,'lms/about.html',context)

def register(request):
    category_names = CategoryName.objects.all()
    if request.user.is_authenticated:
        messages.add_message(request,messages.WARNING,"Warning, You already logged in.")
        return redirect('index')
    last_student_no = user_profile.objects.all().order_by('id').last()
    if not last_student_no:
        user_id =  'ESKP' + '000001'
    else:
        student_no = last_student_no.student_id
        student_no_int = int(student_no[4:10])
        new_student_no_int = student_no_int + 1
        user_id = 'ESKP'  + str(new_student_no_int).zfill(6)
    if request.method == 'POST':
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
                try:
                    myfile = request.FILES['image']
                    fs = FileSystemStorage()
                    filename = fs.save(myfile.name,myfile)
                    url = fs.url(filename)
                except:
                    url = ""
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
                return render(request,'lms/confirm_email.html',{'category':category_names})
            else:
                messages.add_message(request,messages.WARNING,"Try Again, Password not match with confirm password.")
                return redirect('register')
        else:
            messages.add_message(request,messages.WARNING,"Sorry, seems you are a Robot.")
            return redirect('register')
    
    context = {
        'user_id':user_id,
        'category':category_names
    }
    return render(request,'lms/register.html',context)

def activate(request,uidb64,token):
    try:
        uid = force_text(urlsafe_base64_decode(uidb64))
        user = User.objects.get(pk=uid)
        if user and generate_token.check_token(user,token):
            user.is_active = True
            user.save()
            messages.add_message(request,messages.SUCCESS,"Congratulations, Your email has been verified successfully.")
            return redirect('index')
    except:
        messages.add_message(request,messages.WARNING,"Sorry, Seems your ID is Deactivated Permanantly, Register Again.")
        return redirect('handle_login')

def handle_login(request):
    if request.user.is_authenticated:
        messages.add_message(request,messages.WARNING,"Warning, You already logged in.")
        return redirect('index')
    category_names = CategoryName.objects.all()
    context = {
        'category':category_names
    }
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
                messages.add_message(request,messages.SUCCESS,f"Welcome, {request.user.first_name} {request.user.last_name} you logged in successfully.")
                return redirect('index')
            else:
                messages.add_message(request,messages.WARNING,"Sorry, check again your password or username.")
        else:
            messages.add_message(request,messages.WARNING,"Sorry, seems you are a Robot.")
    return render(request,'lms/login.html',context)
       
def handle_logout(request):
    logout(request)
    messages.add_message(request,messages.SUCCESS,"Success, You Logged Out Successfully.")
    return redirect('index')

def contact(request):
    category_names = CategoryName.objects.all()
    context = {
        'category':category_names
    }
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        phone = request.POST['phone']
        my_message = request.POST['message']
        new_contact = Contact(name=name,phone=phone,email=email,message=my_message)
        new_contact.save()
        subject = "Eshiksha Pie"
        message = "Thanks For Contacting Us "+name+". We will get in touch with you within 24 hours."
        from_email = settings.EMAIL_HOST_USER
        to_mail = [email]
        send_mail(subject,message,from_email,to_mail,fail_silently=True)
        
        # For Office Use
        subject = "New Contact"
        message = f"Message from {name}\n{my_message}\n\nContact Info :\nPhone : {phone}\nEmail : {email}"
        from_email = settings.EMAIL_HOST_USER
        to_mail = [settings.EMAIL_HOST_USER]
        send_mail(subject,message,from_email,to_mail,fail_silently=True)
    return render(request,'lms/contact.html',context)

def course_details(request,course_name,course_id):
    
    category_names = CategoryName.objects.all()
    course = Course.objects.filter(id=course_id).first()
    order_amount = course.special_price * 100
    order_currency = 'INR'
    order_receipt = 'order_rcptid_11'
    client = razorpay.Client(auth=('rzp_test_LzwHnNu92TT3HV','95rxpyjuohxBUEGNgL330Op8'))
    payment = client.order.create({'amount':order_amount, 'currency':order_currency, 'payment_capture':'1'})
    if request.user.is_active:
        enrolled_course = EnrolledCourse.objects.filter(user=request.user).filter(course=course).first()
    else:
        enrolled_course = []

    reviews = Review.objects.filter(course=course).all()
    subjects = Subject.objects.filter(course=course).all()
    instructors = []
    videos = []
    enrolled_count = EnrolledCourse.objects.filter(course__id=course_id).count() + 11
    for subject in subjects:
        video = Video.objects.filter(subject__id=subject.id).order_by('id').first()
        if video:
            videos.append({'subject':subject,'video':video.id})
        else:
            videos.append({'subject':subject,'video':0})
        if not subject.instructor in instructors:
            instructors.append(subject.instructor)

    
    all_videos = Video.objects.filter(course__id=course_id).all()
    count_videos = Video.objects.filter(course__id=course_id).count()
    context = {
        'videos':videos,
        'all_videos':all_videos,
        'count_videos':count_videos,
        'instructors':instructors,
        'subjects':subjects,
        'course':course,
        'special_price':course.special_price*100,
        'enrolled' : enrolled_course,
        'reviews':reviews,
        'enrolled_count':enrolled_count,
        'category':category_names
  
    }
    return render(request,'lms/course-detail.html',context)


def checkout(request,courseid):
  
    pass

@csrf_exempt
def thanks(request,course_name):
    last_enroll_no = EnrolledCourse.objects.all().order_by('id').last()
    if not last_enroll_no:
        enroll_id =  'ENCID' + '000001'
    else:
        enroll_no = last_enroll_no.enroll_id
        enroll_no_int = int(enroll_no[5:11])
        new_enroll_no_int = enroll_no_int + 1 
        enroll_id = 'ENCID'  + str(new_enroll_no_int).zfill(6)
    
    course = Course.objects.filter(course_name=(course_name)).first()
    course_expiry_date = datetime.now() + relativedelta(months =+ int(course.duration))
    user = request.user
    user = User.objects.filter(username=user.username).first()
    new_enroll = EnrolledCourse(course=course,user=user,enroll_id=enroll_id,status=True,date=datetime.now(),expiry_date=course_expiry_date)
    new_enroll.save()
    context={'enroll_id' : enroll_id}
    return render(request,'lms/thanks.html',context)

def fail(request):
    return render(request,'lms/fail.html')

@login_required(login_url='handle_login')
def video_playlist(request,course_name,course_id,subject_id,video_id):
    videos = Video.objects.filter(subject__id=subject_id).all()
    category_names = CategoryName.objects.all()
    subject = Subject.objects.filter(id=subject_id).first()
    current_video = Video.objects.filter(id=video_id).first()
    context = {
        'current_video':current_video,
        'videos':videos,
        'course_name':course_name,
        'subject':subject,
        'category':category_names
    }
    return render(request,'lms/video-playlist.html',context)

@login_required(login_url='handle_login')
def dashboard(request):
    user = request.user
    if user.is_staff:
        return redirect('teacher_profile')
    else:
        return redirect('student_profile')

@login_required(login_url='handle_login')
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

@login_required(login_url='handle_login')
def submit_reviews(request,enroll_id):
    if request.method == 'POST':
        review = request.POST['review']
        enroll_course = EnrolledCourse.objects.filter(id=enroll_id).first()
        course = Course.objects.filter(id=enroll_course.course.id).first()
        new_review = Review(review=review,enrolled_course=enroll_course,user=request.user,course=course)
        new_review.save()
    return redirect('dashboard_enrolled_courses')

@login_required(login_url='handle_login')
def student_profile(request):
    user_id = request.user.id
    user = User.objects.filter(id=user_id).first()
    context = {
        'user':user
    }
    return render(request,'lms/dashboard-student.html',context)

@login_required(login_url='handle_login')
def question_answer(request,course_name,course_id,video_id,subject_id):
    if request.method == 'POST':
        question = request.POST['question']
        course = Course.objects.filter(id=course_id).first()
        subject = Subject.objects.filter(id=subject_id).first()
        video = Video.objects.filter(id=video_id).first()
        new_question = QuestionAnswer(question=question,user=request.user,video=video,course=course,subject=subject)
        new_question.save()
        return redirect('video_playlist',course_name=course_name,course_id=course_id,video_id=video_id,subject_id=subject_id)

@login_required(login_url='handle_login')
def student_question(request):
    all_question = QuestionAnswer.objects.filter(user=request.user).order_by('-id').all()
    context = {
        'questions':all_question
    }
    return render(request,'lms/student-dashboard-qa.html',context)

@login_required(login_url='handle_login')
def delete_student_question(request,question_id):
    question = QuestionAnswer.objects.filter(id=question_id).first()
    question.delete()
    return redirect('student_question')

@login_required(login_url='handle_login')
def teacher_profile(request):
    return render(request,'lms/teacher-profile.html')

@login_required(login_url='handle_login')
def teacher_add_video(request):
    if request.method == 'POST':
        video_title = request.POST['video_name']
        video_url = request.POST['video_url']
        video_subject = request.POST['subject']
        video_course = request.POST['course']
        video_description = request.POST['description']
        subject = Subject.objects.filter(id=int(video_subject)).first()
        if subject and subject.course.course_name == video_course:
            try:
                myfile = request.FILES.get('resource')
                fs = FileSystemStorage()
                filename = fs.save(myfile.name,myfile)
                url = fs.url(filename)
            except:
                url = ''
            course = Course.objects.filter(course_name=video_course).first()
            new_video = Video(title=video_title,url=video_url,description=video_description,subject=subject,resources=url,course=course)
            new_video.save()
            return redirect('teacher_add_video')

    subjects = Subject.objects.filter(instructor__user__id=request.user.id).all()
    courses = []
    for subject in subjects:
        if not subject.course.course_name in courses:
            courses.append(subject.course.course_name)
    context = {
        'subjects':subjects,
        'courses':courses
    }
    return render(request,'lms/teacher-add-video.html',context)

@login_required(login_url='handle_login')
def teacher_announce(request):
    if request.method == 'POST':
        msg_subject = request.POST['name']
        live_class_url = request.POST['live_class_url']

        course_name = request.POST['course']
        body = request.POST['description']
        if live_class_url:
            body = f'{body}\nLive Class Link : {live_class_url}'

        course = Course.objects.filter(course_name=course_name).first()
        enrolled = EnrolledCourse.objects.filter(course=course).all()
        students = []
        for enroll in enrolled:
            students.append(enroll.user.email)

        try:
            myfile = request.FILES.get('resource')
        except:
            myfile=''
        email = EmailMessage(
                subject=msg_subject,
                body=body,
                from_email=settings.EMAIL_HOST_USER,
                to=students,
            )
        if myfile:
            email.attach(myfile.name,myfile.read(),myfile.content_type)
        email.send(fail_silently=True)
        
        return redirect('teacher_announce')


    subjects = Subject.objects.filter(instructor__user__id=request.user.id).all()
    courses = []
    for subject in subjects:
        if not subject.course.course_name in courses:
            courses.append(subject.course.course_name)
    context = {
        'subjects':subjects,
        'courses':courses
    }
    return render(request,'lms/teacher_create_announcement.html',context)

@login_required(login_url='handle_login')
def teacher_student(request):
    if not request.user.is_staff:
        return redirect('index')
    teacher_course = Course.objects.filter(instructor__user__id=request.user.id).all()
    students = []
    for i in teacher_course:
        course = EnrolledCourse.objects.filter(course__id=i.id).all()
        for j in course:
            student = User.objects.filter(id=j.user.id).first()
           
            if not student in students:
                student1 = student
                student = {'student':student1,'date':j.date,'enroll_id':j.enroll_id, 'request_status':j.request_deactivate, 'course_expiry_date': j.expiry_date}
                students.append(student)
    context = {
        'students':students
    }
    return render(request,'lms/teacher_enroll_student.html',context)

@login_required(login_url='handle_login')
def teacher_qa(request):

    if request.method == 'POST':
        question_id = request.POST['question_id']
        answer = request.POST['answer']
        question = QuestionAnswer.objects.filter(id=int(question_id)).first()
        question.answer = answer
        question.save()
    # courses = Course.objects.filter(instructor__user__id)
    subjects = Subject.objects.filter(instructor__user__id=request.user.id).all()
 
    question_list = []
    for subject in subjects:
        questions = QuestionAnswer.objects.filter(course__id=subject.course.id).filter(subject__id=subject.id).all()
        for question in questions:
            if not question.answer and not question in question_list:
                question_list.append(question)
    context = {
        'questions':question_list
    }
    return render(request,'lms/teacher-qa.html',context)

def category_details(request,category_name):
    category_names = CategoryName.objects.all()
    courses = Category.objects.filter(category_name__name=category_name).all()
    course_per_page = Paginator(courses,6)
    page_num = request.GET.get('page',1)
    try:
        current_page = course_per_page.page(page_num)
    except EmptyPage:
        current_page = course_per_page.page(1)
    context = {
        'courses':current_page,
        'category_name':category_name,
        'category':category_names 
    }

    return render(request,'lms/course_by_category.html',context)

def study_material(request,class_level):
    category_names = CategoryName.objects.all()
    
    materials = StudyMaterial.objects.filter(class_level=class_level).all()
    subjects = []
    for material in materials:
        if not material.subject in subjects:
            subjects.append(material.subject)

    context = {'materials':materials,
                'subjects':subjects,
                'category':category_names  

    }
    return render(request,'lms/study-material.html',context)

def search_result(request,slug):
    if request.method=='POST':
        search = request.POST['search']
        if not search == slug:
            return redirect('search_result',slug=search)
    search = slug
    courses = Course.objects.all()
    search_result = []
    for course in courses:
        if search.lower() in course.course_name.lower():
            search_result.append(course)
    course_per_page = Paginator(search_result,6)
    page_num = request.GET.get('page',1)
    try:
        current_page = course_per_page.page(page_num)
    except EmptyPage:
        current_page = course_per_page.page(1)

    context = {
        'search_name':search,
        'courses':current_page
    }
    return render(request,'lms/search_result.html',context)

def bulk_admission(request):

    if request.method == 'POST' and request.FILES['myfile']:
        myfile = request.FILES['myfile']
        school_file = pd.read_csv(myfile)
        total_rows = school_file.count()[0]
        for i in range(0,total_rows):
            f_name = school_file['first_name'][i]
            l_name = school_file['last_name'][i]
            username = school_file['username'][i]
            email = school_file['email'][i]
            password = school_file['password'][i]
            phone = school_file['phone'][i]
            state = school_file['state'][i]
            city = school_file['city'][i]
            address = school_file['address'][i]
            father_name = school_file['father_name'][i]
            mother_name = school_file['mother_name'][i]
            zip_code = school_file['zip_code'][i]
            school_name = school_file['school_name'][i]
            dob = school_file['dob'][i]
            course_name = school_file['course'][i]
            last_student_no = user_profile.objects.all().order_by('id').last()

            if not last_student_no:
                user_id =  'ESKP' + '000001'
            else:
                student_no = last_student_no.student_id
                student_no_int = int(student_no[4:10])
                new_student_no_int = student_no_int + 1
                user_id = 'ESKP'  + str(new_student_no_int).zfill(6)

            new_user = User.objects.create_user(first_name=f_name,username=username,last_name=l_name,email=email,is_active=False,password=str(password))
            course = Course.objects.filter(course_name=course_name).first()
            last_enroll_no = EnrolledCourse.objects.all().order_by('id').last()
            if not last_enroll_no:
                enroll_id =  'ENCID' + '000001'
            else:
                enroll_no = last_enroll_no.enroll_id
                enroll_no_int = int(enroll_no[5:11])
                new_enroll_no_int = enroll_no_int + 1
                enroll_id = 'ENCID'  + str(new_enroll_no_int).zfill(6)
            new_enroll = EnrolledCourse(user=new_user,course=course,enroll_id=enroll_id,status=True)
            new_enroll.save()

        
            new_user_profile = user_profile(phone=phone,student_id=user_id,school_name=school_name,dob=dob,session='',mother_name=mother_name,father_name=father_name,address=address,state=state,city=city,zip_code=zip_code,user=new_user)
            new_user_profile.save()
            current_site = get_current_site(request).domain
            subject = "Activate Your Account"
            from_email = settings.EMAIL_HOST_USER
            to_mail = [email]
            
            message = render_to_string('lms/activate.html',
            {
                'user':new_user,
                'domain':current_site,
                'uid':urlsafe_base64_encode(force_bytes(new_user.pk)),
                'token':generate_token.make_token(new_user)

            }
            )
            send_mail(subject,message,from_email,to_mail,fail_silently=True)
    
    return render(request,'lms/bulk_admission.html')

@login_required(login_url='handle_login')
def change_password(request):
    if request.method == 'POST':
        current_password = request.POST['current_password']
        verify = authenticate(username=request.user.username,password=current_password)
        if verify:
            new_password = request.POST['new_password']
            re_password = request.POST['re_password']
            if new_password == re_password:
                user = User.objects.filter(username=request.user.username).first()
                user.set_password(new_password)
                user.save()
            else:
                return redirect('index')
        return redirect('handle_logout')

def request_deactivate_subscription(request,enroll_id):
    enroll = EnrolledCourse.objects.filter(enroll_id=enroll_id).first()
    if enroll.request_deactivate == 1:
        enroll.request_deactivate = 2
        enroll.save()
    return redirect('teacher_student')

def deactivate_subscription(request):
    enroll_users = EnrolledCourse.objects.exclude(request_deactivate=1).all()
    context = {'enroll':enroll_users}
    return render(request,'lms/deactivate-subscription.html',context)

def confirm_deactivate_subscription(request,enroll_id):
    enroll = EnrolledCourse.objects.filter(enroll_id=enroll_id).first()
    enroll.status = False
    enroll.request_deactivate = 3
    enroll.save()
    return redirect('deactivate_subscription')

def cancel_deactivate_subscription(request,enroll_id):
    enroll = EnrolledCourse.objects.filter(enroll_id=enroll_id).first()
    enroll.request_deactivate = 1
    enroll.save()
    return redirect('deactivate_subscription')


def rollback_deactivate_subscription(request,enroll_id):
    enroll = EnrolledCourse.objects.filter(enroll_id=enroll_id).first()
    enroll.status = True
    enroll.request_deactivate = 1
    enroll.save()
    return redirect('deactivate_subscription')

def view_review(request):
    reviews = Review.objects.exclude(is_approved=True).all()
    context = {'reviews':reviews}
    return render(request,'lms/view-review.html',context)

def accept_review(request,review_id):
    review = Review.objects.filter(id=review_id).first()
    review.is_approved = True
    review.save()
    return redirect('view_review')

def dismiss_review(request,review_id):
    review = Review.objects.filter(id=review_id).delete()
    return redirect('view_review')


def t_and_c(request):
    return render(request,'lms/terms_and_conditions.html')