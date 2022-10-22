from django.shortcuts import render,redirect
from apps.WorkshopApp.models import Workshop
from apps.MemoriseFerdowsApp.models import Memory
from django.db.models import Q
from django.views import View
# Create your views here.


class Search(View):
    def get(self, request, *args, **kwargs):
        query=request.GET.get("q")
        memories=Memory.objects.filter(Q(memory_title__icontains=query))
        workshops=Workshop.objects.filter(Q(title__icontains=query))
        context={
            'memories':memories,
            'workshops':workshops  
        }
        return render(request,'SearchApp/search.html',context)