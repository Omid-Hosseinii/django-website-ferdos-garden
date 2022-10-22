from django.contrib import admin
from .models import Memory
# Register your models here.


@admin.register(Memory)
class MemoryAdmin(admin.ModelAdmin):
    list_display=['memory_title','is_active','register_date','user_registered',]

