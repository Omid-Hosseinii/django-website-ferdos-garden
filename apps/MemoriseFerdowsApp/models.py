from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
# Create your models here.


class Memory(models.Model):
    memory_title=models.CharField(max_length=200,verbose_name='عنوان خاطره')
    memory_text=models.TextField(verbose_name='متن خاطره')
    register_date=models.DateField(default=timezone.now,verbose_name='زمان ثبت خاطره')
    is_active=models.BooleanField(default=False,verbose_name='فعال/غیرفال')
    user_registered=models.ForeignKey(User,on_delete=models.CASCADE,verbose_name='کاربر ثبت کننده')
    
    
    def __str__(self):
        return self.memory_title
    
    class Meta:
        verbose_name='خاطره'
        verbose_name_plural='خاطرات'
        db_table='t_meomry'
        
        

def upload_gallery_image(instance,filename):
    return f"images/memory/{instance.memory.memory_title}/gallery/{filename}"


class MemoryGalley(models.Model):
    memory_image_name= models.ImageField(upload_to=upload_gallery_image, verbose_name='تصویر خاطره')
    memory=models.ForeignKey(Memory,on_delete=models.CASCADE,null=True,related_name='pics')
    
    class Meta:
        db_table='t_meomrygallery'    
    
    
    
    
class MemoryLike(models.Model):
    user_liked= models.ForeignKey(User,on_delete=models.CASCADE,null=True)
    memory=models.ForeignKey(Memory,on_delete=models.CASCADE,null=True)

    class Meta:
        db_table='t_meomrylike'     

