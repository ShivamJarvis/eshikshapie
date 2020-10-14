from django.urls import path
from learning_system_app import views

urlpatterns = [
    path('',views.index,name='index'),
    path('about/',views.about,name='about'),
    path('course/details/<course_name>/<int:course_id>',views.course_details,name='course_details'),
    path('contact/',views.contact,name='contact'),
    path('login/',views.handle_login,name='handle_login'),
    path('register/',views.register,name='register'),
    path('activate/<uidb64>/<token>/',views.activate,name='activate'),
    path('logout/',views.handle_logout,name='handle_logout'),
    path('handlerequest/',views.handle_request,name='handle_request'),
    
    path('course/details/<course_name>/<int:course_id>/enroll/proceed/',views.enroll_to_course,name='enroll_to_course'),
    path('course/details/<course_name>/<int:course_id>/videos/<int:video_id>/',views.video_playlist,name='video_playlist'),
    path('dashboard/student/',views.dashboard_student,name='dashboard_student'),
    path('dashboard/enrolled-courses/',views.dashboard_enrolled_courses,name='dashboard_enrolled_courses'),
    path('dashboard/enrolled-courses/review/<int:enroll_id>/',views.submit_reviews,name='submit_reviews'),
    path('dashboard/student/profile/',views.student_profile,name='student_profile'),
]