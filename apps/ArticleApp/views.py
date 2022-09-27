from django.shortcuts import render
from .models import *
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