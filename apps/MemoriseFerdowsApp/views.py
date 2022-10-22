# from pyexpat.errors import messages
from django.contrib import messages
from django.shortcuts import render,redirect
from django.forms import modelformset_factory
from .models import *
from .forms import *
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.http import HttpResponse
from django.views import View


# Create your views here.


class ShowmMemries(View):
    def get(self,request,*args, **kwargs):
        memories=Memory.objects.filter(is_active=True)
        
        if request.user.is_authenticated:
            list_memory_liked=MemoryLike.objects.filter(user_liked_id=request.user.id).values("memory_id")
            list_memory_liked_id=[memory["memory_id"] for memory in list_memory_liked]
            return render(request,'MemoriseFerdowsApp/show.html',context={'memories':memories,'list_memory_liked_id':list_memory_liked_id})
        return render(request,'MemoriseFerdowsApp/show.html',context={'memories':memories})
    
    
@login_required
def add_memory(request):
    ImageFormSet=modelformset_factory(MemoryGalley,form=MemoryGalleryForms,extra=4)
    if request.method=="GET":
        memory_form=MemoryForms()
        image_formset=ImageFormSet(queryset=MemoryGalley.objects.none())
        context={
            'memory_form':memory_form,
            'memory_formset':image_formset
        }
        return render(request,'MemoriseFerdowsApp/registermemory.html',context)
    elif request.method=="POST":
        memory_form=MemoryForms(request.POST)
        image_formset=ImageFormSet(request.POST,request.FILES)
        
        if memory_form.is_valid() and image_formset.is_valid() :
            data=memory_form.cleaned_data
            memory_obj=Memory.objects.create(
                memory_title=data["memory_title"],
                memory_text=data["memory_text"],
                user_registered=request.user)
            
            for form in image_formset.cleaned_data:
                if form:
                    MemoryGalley.objects.create(
                        memory_image_name=form["memory_image_name"],
                        memory=memory_obj)
            messages.success(request,'خاطره شما با موفقیت ثبت شد','success')
            return redirect('mainpage') 
        else:
            context={
                'memory_form':memory_form,
                'memory_formset':image_formset
            }
            return render(request,'MemoriseFerdowsApp/registermemory.html',context)               



def like(request):
    if request.method =="GET":
        memory_id=request.GET['memory_id']   
        memory=Memory.objects.get(id=memory_id)     
        likememory=MemoryLike.objects.filter(memory_id=memory.id,user_liked=request.user)
        if not likememory:
            likememory=MemoryLike(memory=memory)
            likememory.user_liked=request.user
            likememory.save()
        return HttpResponse("Success")    
    return HttpResponse("UnSuccess")    