
from multiprocessing import context
from django.shortcuts import render,redirect
from datetime import time,datetime
from django.conf import settings
import os
from .models import Place,TicketPrice,Message
from django.http import Http404,HttpResponse,HttpResponseNotFound
from django.core.files.storage import FileSystemStorage
from .forms import MessageForm
from django.contrib import messages

# Create your views here.



def index(request):
    context={
        'media_url':settings.MEDIA_URL
    }
    return render(request,'IntroductionApp/Introductionmain.html',context)



def parts(request):
    places =Place.objects.all()
    context = {
        'places':places
    }
    return render(request,'IntroductionApp/parts.html',context)


def parts_detail(request,place_id):
    try:
        place=Place.objects.get(id=place_id)
    except Place.DoesNotExist:
        raise Http404('page not found...!')    
    return render(request,'IntroductionApp/parts_detail.html',{'place':place})
    
    
    

def download_path(request):
    fs=FileSystemStorage()
    file_name="pdf/ferdowsGardenPath.pdf"
    if fs.exists(file_name):
        with fs.open(file_name) as pdf:
            response=HttpResponse(pdf,content_type='application/pdf')
            response['Content-Disposition']='inline; filename=ferdowsGardenPath.pdf'
            return response
    else:
        return HttpResponseNotFound('Not Found ...!')
        
        
        
        
def schedule_condition(request):
    places=Place.objects.all()
    prices=TicketPrice.objects.all().order_by('place')
    context={
        'places':places,
        'prices':prices,
    }
    
    return render(request,'IntroductionApp/schedule_condition.html',context)    


def contact_user(request):
    form=MessageForm(request.POST)
    if form.is_valid():
        data=form.cleaned_data
        msg=Message()
        msg.full_name=data['full_name']
        msg.email=data['email']
        msg.subject=data['subject']
        msg.message=data['message']
        msg.save()
        messages.success(request,'پیام شما با موفقیت ارسال شد','success')
        return redirect('introductionmain')
    else:
        form=MessageForm()
    context={
        'form': form,
    }
    
    return render(request,'IntroductionApp/contact_user.html',context)    