
from django.urls import path
import apps.ArticleApp.views as views

urlpatterns=[
    
    path('',views.index,name='articlemain'),
    path('<str:slug>/',views.show_detail_blog,name='ArticleDetail'),
    path('pdfdl/<int:article_id>/',views.dl_pdf,name='Articledl'),
]