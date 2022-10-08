from django.db import models
from django.utils import timezone
# Create your models here.

class WorkshopStatus(models.Model):
    status_code= models.IntegerField(primary_key=True,verbose_name='کد وضعیت')
    status_title=models.CharField(max_length=50,verbose_name='عنوان وضعیت')
    
    def __str__(self):
        return self.status_title
    
    class Meta:
        verbose_name = 'وضعیت ورکشاپ'
        verbose_name_plural = 'وضعیت ورکشاپها'
        db_table ='t_workshopstatus'
        
        
def workshok_image_path(instance,filename):
    return f"images/workshops/{filename}"

class Workshop(models.Model):
    title=models.CharField(max_length=200,verbose_name='عنوان')
    image_name=models.ImageField(upload_to=workshok_image_path, verbose_name='تصویر اصلی')
    date_time=models.DateTimeField(verbose_name='تاریخ و زمان برگزاری')
    places=models.CharField(max_length=50,verbose_name='مکان برگزاری')
    teacher=models.CharField(max_length=50,verbose_name='مدرس')
    information=models.TextField(verbose_name='اطلاعات')
    registration=models.TextField(verbose_name='شرایط ثبت نام')
    report_text=models.TextField(verbose_name='متن گزارش',null=True,blank=True) 
    view_number=models.IntegerField(default=0,verbose_name='تعداد بازدید')
    register_date=models.DateTimeField(default=timezone.now,verbose_name='تاریخ ثبت کارگاه')
    is_active=models.BooleanField(default=False,verbose_name='فعال/غیر فعال')
    status=models.ForeignKey(WorkshopStatus,on_delete=models.CASCADE,verbose_name='وضعیت کارگاه')
    
    
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name = 'ورکشاپ'
        verbose_name_plural = 'ورکشاپها'
        db_table ='t_workshop'           
        
        
def gallery_image_path(instance,filename):
    return f"images/workshops/report/{instance.workshop.id}/{filename}"

class WorkshopGallery(models.Model):
    workshop= models.ForeignKey(Workshop,on_delete=models.CASCADE,verbose_name='کارگاه')
    image=models.ImageField(upload_to=gallery_image_path, verbose_name='تصویر')
    
    def __str__(self):
        return str(self.workshop)
    
    class Meta:
        verbose_name = 'تصویر'
        verbose_name_plural = 'تصاویر'
        db_table ='t_workshopgallery'      
            