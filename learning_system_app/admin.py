from django.contrib import admin
from learning_system_app.models import Contact,user_profile,Instructor,Course,EnrolledCourse,Review,Video,QuestionAnswer,Subject,Category,StudyMaterial,CategoryName
# Register your models here.

admin.site.register(Contact)
admin.site.register(user_profile)
admin.site.register(Instructor)
admin.site.register(Course)
admin.site.register(EnrolledCourse)
admin.site.register(Review)
admin.site.register(Video)
admin.site.register(Subject)
admin.site.register(QuestionAnswer)
admin.site.register(Category)
admin.site.register(CategoryName)
admin.site.register(StudyMaterial)