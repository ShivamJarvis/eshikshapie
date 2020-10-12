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
from learning_system_app.models import Contact,user_profile
# Create your views here.

def index(request):
    return render(request,'lms/index.html')

def about(request):
    return render(request,'lms/about.html')


def register(request):
    user = User.objects.last()
    if user:
        user_id = f'ESPID0{user.id}'
    else:
        user_id = f'ESPID0{1}'
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
        if pass1 == pass2:
            myfile = request.FILES['image']
            fs = FileSystemStorage()
            filename = fs.save(myfile.name,myfile)
            url = fs.url(filename)
            new_user = User.objects.create_user(first_name=f_name,username=username,last_name=l_name,email=email,is_active=False,password=pass1)
            
            new_user_profile = user_profile(phone=phone,student_id=user_id,school_name='',dob=dob,session='',mother_name=mother_name,father_name=father_name,address=address,state=state,city=city,zip_code=zip_code,user=new_user)
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
        return redirect('register')

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