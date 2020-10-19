from django.contrib.auth import user_logged_in,user_logged_out
from django.dispatch import receiver
from learning_system_app.models import LoggedInUser #Change LoggedInUser with your model name

@receiver(user_logged_in)
def on_user_logged_in(sender,**kwargs):
    LoggedInUser.objects.get_or_create(user=kwargs.get('user')) #Change LoggedInUser with your model name


@receiver(user_logged_out)
def on_user_logged_out(sender,**kwargs):
    LoggedInUser.objects.filter(user=kwargs.get('user')).delete() #Change LoggedInUser with your model name


