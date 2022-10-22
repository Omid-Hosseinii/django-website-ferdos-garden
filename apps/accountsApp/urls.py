from django.urls import path
from .views import *

urlpatterns =[
    path('register/',RegisterUserView.as_view(),name='RegisterUser'),
    path('login/',LoginUserView.as_view(),name='LoginUser'),
    path('logout/',LogoutUserView.as_view(),name='LogoutUser'),
]