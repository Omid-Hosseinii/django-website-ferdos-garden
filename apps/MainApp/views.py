from multiprocessing import context
from django.shortcuts import render
from datetime import time,datetime
from django.conf import settings
import os

# Create your views here.



def index(request):
    context={
        'media_url':settings.MEDIA_URL
    }
    return render(request,'index.html',context)