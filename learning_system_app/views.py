from django.shortcuts import render,HttpResponse,redirect
import requests
import json
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
from .Paytm import Checksum
from django.views.decorators.csrf import csrf_exempt
from django.http import JsonResponse
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator,EmptyPage
# Create your views here.

MERCHANT_KEY = "7Gg9YJuMubv@MHim"

def error_404_view(request,exception):
    return render(request,'lms/404.html')

def index(request):
    enroll = EnrolledCourse.objects.all()
    category = CategoryName.objects.all()
    for en in enroll:
        if not en.status:
            en.delete()
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
        message = request.POST['message']
        
        new_contact = Contact(name=name,phone=phone,email=email,message=message)
        new_contact.save()
        subject = "Eshiksha Pie"
        message = "Thanks For Contacting Us "+name+". We will get in touch with you within 24 hours."
        from_email = settings.EMAIL_HOST_USER
        to_mail = [email]
        send_mail(subject,message,from_email,to_mail,fail_silently=True)
    return render(request,'lms/contact.html',context)

def course_details(request,course_name,course_id):
    category_names = CategoryName.objects.all()
    course = Course.objects.filter(id=course_id).first()
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
            
   
    context = {
        'videos':videos,
        'instructors':instructors,
        'subjects':subjects,
        'course':course,
        'enrolled' : enrolled_course,
        'reviews':reviews,
        'enrolled_count':enrolled_count,
        'category':category_names
  
    }
    return render(request,'lms/course-detail.html',context)

def enroll_to_course(request,course_id,course_name):
    if not request.user.is_authenticated:
        messages.add_message(request,messages.WARNING,"Sorry, seems you are not login or registered with us.")
        return redirect('handle_login')
    last_enroll_no = EnrolledCourse.objects.all().order_by('id').last()
    if not last_enroll_no:
        enroll_id =  'ENCID' + '000001'
    else:
        enroll_no = last_enroll_no.enroll_id
        enroll_no_int = int(enroll_no[5:11])
        new_enroll_no_int = enroll_no_int + 1
        enroll_id = 'ENCID'  + str(new_enroll_no_int).zfill(6)
    course = Course.objects.filter(id=course_id).first()
    user = request.user
    new_enroll = EnrolledCourse(course=course,user=user,enroll_id=enroll_id)
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
                if not response_dict['RESPCODE'] == '01':
                   enroll.status = True
                   enroll.save()
                else:
                    enroll.delete()
    
      
    return render(request, 'lms/paymentstatus.html', {'response': response_dict})

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