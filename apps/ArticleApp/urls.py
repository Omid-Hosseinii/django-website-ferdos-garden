
from django.urls import path
import apps.ArticleApp.views as views

urlpatterns=[
    
    path('',views.index,name='articlemain'),
]