from django.contrib.sessions.models import Session

class OneSessionPerUser:
    def __init__(self,get_response):
        self.get_response = get_response
        
    def __call__(self,request):
        response = self.get_response(request)
        if request.user.is_authenticated:
            current_session_key = request.user.logged_in_user.session_key #Change logged_in_user with your related name on OneToOne field in models
            if current_session_key and current_session_key != request.session.session_key:
                Session.objects.filter(session_key=current_session_key).delete()
            request.user.logged_in_user.session_key = request.session.session_key #Change logged_in_user with your related name on OneToOne field in models
            request.user.logged_in_user.save() #Change logged_in_user with your related name on OneToOne field in models

        return response


# Add middelware in settings.py in middleware : 'app_name.middlewares.OneSessionPerUser' OneSessionPerUser can change if class name is different in your case