from django.urls import path
import apps.MainApp.views as views

urlpatterns=[
    
    path('',views.index,name='mainpage')

]