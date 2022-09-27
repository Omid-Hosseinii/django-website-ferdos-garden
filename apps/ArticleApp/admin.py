from django.contrib import admin
from .models import *
# Register your models here.

@admin.register(Author)
class AuthorAdmin(admin.ModelAdmin):
    list_display=['name','family','email','mobile','is_active','slug']



@admin.register(ArticleGroup)
class ArticleGroupAdmin(admin.ModelAdmin):
    list_display=['group_title']
    
    
    
@admin.register(Article)
class ArticleAdmin(admin.ModelAdmin):
    list_display=['group','title','image','short_text','text','key_words','register_date','publish_date','update_date','is_active','pdf_filename','view_number','slug']
    
    
    
@admin.register(ArticleGallery)
class ArticleGalleryAdmin(admin.ModelAdmin):
    list_display=['images','article']
    
    
    
    
    
    
    
    
    
    
    