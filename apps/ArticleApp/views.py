from django.shortcuts import render
from .models import *
from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse,HttpResponseNotFound
import os 
from django.conf import settings
# Create your views here.


def index(request):
    articles = Article.objects.all()
    article_author=Article.author.through.objects.all()
    authors=Author.objects.all()
    context={
        'articles':articles,
        'article_author':article_author,
        'authors':authors,
        
    }
    return render(request,'ArticleApp/index.html',context)



def show_detail_blog(request,slug):
    article= Article.objects.get(slug=slug)
    image_list=os.listdir(settings.MEDIA_ROOT+'images/articles/article_'+str(article.id))
    article.view_number+=1
    article.save()
    article_author=Article.objects.get(id=article.id).author.through.objects.all()
    authors=Author.objects.all()
    context={
        'article':article,
        'article_author':article_author,
        'authors':authors,
        'image_list':image_list
    }
    return render(request,'ArticleApp/article_detail.html',context)
    
    
def dl_pdf(request,article_id):
    fs=FileSystemStorage()
    filename="article_"+str(article_id)+".pdf"
    file_path="pdf/"+filename
    if fs.exists(file_path):
        with fs.open(file_path) as pdf:
            response=HttpResponse(pdf,content_type="application/pdf")
            response['Content_Disposition']="inline;filename="+filename
            return response
    else:
        return HttpResponseNotFound("Not Found...")    
        