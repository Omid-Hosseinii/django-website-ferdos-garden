from os import name
from django.db import models
from django.utils import timezone
# Create your models here.

### place models
class Place(models.Model):
    place_name=models.CharField(max_length=200,verbose_name='نام مکان')
    description=models.TextField(verbose_name='توضیحات',default='توضیحات مکان')
    place_image_name=models.ImageField(upload_to='photos/Place_image',verbose_name='تصویر')
    visit_date_day=models.CharField(max_length=200,verbose_name='تاریخ بازدید')
    visit_time=models.CharField(max_length=200,verbose_name='ساعت بازدید')
    Terms_Conditions=models.TextField(verbose_name='قوانین و مقررات')
    more_information=models.TextField(max_length=500,verbose_name='اطلاعات بیشتر',blank=True,null=True)
    register_date=models.DateTimeField(default=timezone.now,verbose_name='تاریخ ثبت مکان')
    
    def __str__(self):
        return self.place_name
    
    class Meta:
            db_table ="t_place"
            verbose_name = "مکان"
            verbose_name_plural = "مکان ها"
            
    
    
    
### Type of visitor
class VisitorType(models.Model):
    type_name = models.CharField(max_length=100,verbose_name='نام نوع بازدید کننده')   
    
    def __str__(self):
        return self.type_name
    
    class Meta:
            db_table ="t_visitor_type"
            verbose_name = "بازدید کننده"
            verbose_name_plural = "بازدید کنندگان" 
            
               
    
    
### price ticket
class TicketPrice(models.Model):
    visitor_type=models.ForeignKey(VisitorType,on_delete=models.CASCADE,verbose_name='نوع بازدید کننده')
    place=models.ForeignKey(Place,on_delete=models.CASCADE,verbose_name='مکان بازدید')
    price=models.IntegerField(default=0,verbose_name='بهای بیلیط')
    
    def __str__(self):
        return f'{self.place}\t{self.visitor_type}\t{self.price}'    
    
    class Meta:
            db_table ="t_price_ticket"
            verbose_name = "بیلیت"
            verbose_name_plural = "بیلیت ها"    




### contact us : message model
class Message(models.Model):
    full_name=models.CharField(max_length=100,verbose_name='نام و نام خانوادگی')
 
    email=models.EmailField(max_length=100,verbose_name='آدرس ایمیل')
    subject=models.CharField(max_length=200,verbose_name='موضوع پیام')
    message=models.TextField(verbose_name='متن پیام') 
    is_seen=models.BooleanField(default=False,verbose_name='وضعیت دیده شدن پیام')
    register_date=models.DateTimeField(default=timezone.now,verbose_name='تاریخ ثبت پیام') 

    def __str__(self):
        return f'{self.full_name}\t{self.subject}'     
    
    
    class Meta:
            db_table ="t_message"
            verbose_name = "پیام"
            verbose_name_plural = "پیام ها"                

