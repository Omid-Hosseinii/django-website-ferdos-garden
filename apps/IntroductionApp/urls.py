
from django.urls import path
import apps.IntroductionApp.views as views

urlpatterns=[
    
    path('',views.index,name='introductionmain'),
    path('parts',views.parts,name='introductionparts'),
    path('part_detail/<int:place_id>/',views.parts_detail,name='introduction_partdetail'),
    path('directiondl',views.download_path,name='introduction_pdfdownload'),
    path('schedule',views.schedule_condition,name='introduction_schedulecondition'),
    path('contactus',views.contact_user,name='introduction_contact_user'),

]
