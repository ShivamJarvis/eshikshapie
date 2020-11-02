from django.urls import path
from learning_system_app import views

urlpatterns = [
    path('',views.index,name='index'),
    path('about/',views.about,name='about'),
    path('course/details/<course_name>/<int:course_id>',views.course_details,name='course_details'),
    path('contact/',views.contact,name='contact'),
    path('search-results/<slug>/',views.search_result,name='search_result'),
    path('login/',views.handle_login,name='handle_login'),
    path('register/',views.register,name='register'),
    path('activate/<uidb64>/<token>/',views.activate,name='activate'),
    path('logout/',views.handle_logout,name='handle_logout'),
    path('handlerequest/',views.handle_request,name='handle_request'),
    path('course/details/<course_name>/<int:course_id>/enroll/proceed/',views.enroll_to_course,name='enroll_to_course'),
    path('course/details/<course_name>/<int:course_id>/videos/<int:subject_id>/<int:video_id>/',views.video_playlist,name='video_playlist'),
    path('course/details/<course_name>/<int:course_id>/videos/<int:video_id>/<int:subject_id>/question-answer/',views.question_answer,name='question_answer'),
    path('study-material/class=<int:class_level>/',views.study_material,name='study_material'),
    path('course/category/<category_name>/',views.category_details,name='category_details'),
    path('dashboard/',views.dashboard,name='dashboard'),
    path('dashboard/enrolled-courses/',views.dashboard_enrolled_courses,name='dashboard_enrolled_courses'),
    path('dashboard/enrolled-courses/review/<int:enroll_id>/',views.submit_reviews,name='submit_reviews'),
    path('dashboard/student/q&a/',views.student_question,name='student_question'),
    path('dashboard/student/q&a/delete/<int:question_id>',views.delete_student_question,name='delete_student_question'),
    path('dashboard/student/profile/',views.student_profile,name='student_profile'),
    path('dashboard/teacher/profile/',views.teacher_profile,name='teacher_profile'),
    path('dashboard/teacher/add-video/',views.teacher_add_video,name='teacher_add_video'),
    path('dashboard/teacher/create-announcement/',views.teacher_announce,name='teacher_announce'),
    path('dashboard/teacher/enroll-student/',views.teacher_student,name='teacher_student'),
    path('dashboard/teacher/q&a/',views.teacher_qa,name='teacher_qa'),
    path('dashboard/teacher/bulk-admission/',views.bulk_admission,name='bulk_admission'),


]