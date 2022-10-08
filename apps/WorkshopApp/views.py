from django.shortcuts import render
from django.views.generic.list import ListView
from django.views.generic.detail import DetailView
from .models import *
from django.http import Http404
from django.conf import settings
import os
# Create your views here.




class WorkshopList(ListView):
    model=Workshop
    template_name='WorkshopApp/workshop_list.html'
    context_object_name='workshops'
    queryset=Workshop.objects.order_by('-is_active')
    paginate_by=3





class WorkshopReport(DetailView):
    model=Workshop
    template_name='WorkshopApp/workshop_report.html'
    context_object_name='workshop'
    
    def get_context_data(self,**kwargs):
        context=super().get_context_data(**kwargs)
        pk=self.kwargs['pk']
        
        try:
            
            workshop=Workshop.objects.get(id=pk)
            workshop.view_number+=1
            workshop.save()
            
            path=settings.MEDIA_ROOT+ 'images/workshops/report/' + str(pk)
            if os.path.isdir(path):
                image_list=os.listdir(path)
                context['image_list']=image_list
                return context
                        
        except workshop.DoesNotExist:
            return Http404("Not Found... !")    