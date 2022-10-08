from django.contrib import admin
from .models import WorkshopStatus,Workshop,WorkshopGallery
# Register your models here.

@admin.register(WorkshopStatus)
class WorkshopStatusAdmin(admin.ModelAdmin):
    list_display=['status_code','status_title',]
    

@admin.register(Workshop)
class WorkshopAdmin(admin.ModelAdmin):
    list_display=['title','image_name','date_time','places','teacher','is_active','register_date','status',]
    

@admin.register(WorkshopGallery)
class WorkshopGalleryAdmin(admin.ModelAdmin):
    list_display=['workshop','image',]
    
    
    