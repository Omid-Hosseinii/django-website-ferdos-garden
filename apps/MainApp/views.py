from multiprocessing import context
from django.shortcuts import render
from datetime import time,datetime
from django.conf import settings
import os

# Create your views here.

def media_admin(request):
    return {'media_url':settings.MEDIA_URL}

def index(request):
    return render(request,'MainApp/mainpage.html')