from django.urls import path
from learning_system_app import views

urlpatterns = [
    path('',views.index,name='index'),
    path('about/',views.about,name='about'),
    path('contact/',views.contact,name='contact'),
    path('login/',views.handle_login,name='handle_login'),
    path('register/',views.register,name='register'),
     path('activate/<uidb64>/<token>/',views.activate,name='activate'),
    path('logout/',views.handle_logout,name='handle_logout'),
]