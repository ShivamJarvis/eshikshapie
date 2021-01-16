from django.urls import path
from learning_system_app import views
from django.contrib.auth import views as auth_views


urlpatterns = [
    # Home Url
    path('',views.index,name='index'),

    path('eshikshapie/terms-and-conditions/',views.t_and_c,name='tandc'),

    # About Page Url
    path('about/',views.about,name='about'),

    # Course Details URL
    path('course/details/<course_name>/<int:course_id>',views.course_details,name='course_details'),

    # Contact URL
    path('contact/',views.contact,name='contact'),

    # Search Url
    path('search-results/<slug>/',views.search_result,name='search_result'),

    # Login Url
    path('login/',views.handle_login,name='handle_login'),

    # Register Url
    path('register/',views.register,name='register'),

    # Activate Account Url
    path('activate/<uidb64>/<token>/',views.activate,name='activate'),

    # Logout Url
    path('logout/',views.handle_logout,name='handle_logout'),


    
    # Checkout Success Url
    path('payment/success/<course_name>/',views.thanks,name='thanks'),


    # Checkout Fail Url
    # path('enroll-course/fail/',views.fail,name='fail'),

    # Video Playlist Url
    path('course/details/<course_name>/<int:course_id>/videos/<int:subject_id>/<int:video_id>/',views.video_playlist,name='video_playlist'),

    # Asking Question by Students during videos
    path('course/details/<course_name>/<int:course_id>/videos/<int:video_id>/<int:subject_id>/question-answer/',views.question_answer,name='question_answer'),

    # Study Material Url
    path('study-material/class=<int:class_level>/',views.study_material,name='study_material'),

    # Category Details Url
    path('course/category/<category_name>/',views.category_details,name='category_details'),

    # Student Dashboard
    path('dashboard/',views.dashboard,name='dashboard'),
    path('dashboard/enrolled-courses/',views.dashboard_enrolled_courses,name='dashboard_enrolled_courses'),
    path('dashboard/enrolled-courses/review/<int:enroll_id>/',views.submit_reviews,name='submit_reviews'),
    path('dashboard/student/q&a/',views.student_question,name='student_question'),
    path('dashboard/student/q&a/delete/<int:question_id>',views.delete_student_question,name='delete_student_question'),
    path('dashboard/student/profile/',views.student_profile,name='student_profile'),

    # Teacher Dashboard 
    path('dashboard/teacher/profile/',views.teacher_profile,name='teacher_profile'),

    # For Deactivate Subscription
    path('dashboard/teacher/subscription/deactivate/',views.deactivate_subscription,name='deactivate_subscription'),
    path('dashboard/teacher/subscription/deactivate/request/<enroll_id>/',views.request_deactivate_subscription,name='request_deactivate_subscription'),
    path('dashboard/teacher/subscription/deactivate/cancel/<enroll_id>/',views.cancel_deactivate_subscription,name='cancel_deactivate_subscription'),
    path('dashboard/teacher/subscription/deactivate/confirm/<enroll_id>/',views.confirm_deactivate_subscription,name='confirm_deactivate_subscription'),
    path('dashboard/teacher/subscription/deactivate/rollback/<enroll_id>/',views.rollback_deactivate_subscription,name='rollback_deactivate_subscription'),

    # For Admin Accept Reviews
    path('dashboard/teacher/reviews/view/',views.view_review,name='view_review'),
    path('dashboard/teacher/reviews/accept/<int:review_id>/',views.accept_review,name='accept_review'),
    path('dashboard/teacher/reviews/dismiss/<int:review_id>/',views.dismiss_review,name='dismiss_review'),

    # For Teacher Add Video
    path('dashboard/teacher/add-video/',views.teacher_add_video,name='teacher_add_video'),

    # For Teacher Create Announcement
    path('dashboard/teacher/create-announcement/',views.teacher_announce,name='teacher_announce'),

    # For Teacher See Enrolled Students
    path('dashboard/teacher/enroll-student/',views.teacher_student,name='teacher_student'),

    # For Teacher Answer Q and A
    path('dashboard/teacher/q&a/',views.teacher_qa,name='teacher_qa'),

    # For Only Admin Bulk Admissions from school
    path('dashboard/teacher/bulk-admission/',views.bulk_admission,name='bulk_admission'),

    # Change Password For Students and Teachers from dashboard
    path('change-password/',views.change_password,name='change_password'),

    # Reset Password URLs
    path('password_reset/',auth_views.PasswordResetView.as_view(),name='password_reset'),
    path('password_reset/done/',auth_views.PasswordResetDoneView.as_view(),name='password_reset_done'),
    path('reset/<uidb64>/<token>/',auth_views.PasswordResetConfirmView.as_view(),name='password_reset_confirm'),
    path('reset/done/',auth_views.PasswordResetCompleteView.as_view(),name='password_reset_complete'),
    
 

]