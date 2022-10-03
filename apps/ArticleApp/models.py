from django.db import models
from datetime import datetime
from django.utils import timezone
# Create your models here.


class Author(models.Model):
    name = models.CharField(max_length=30,verbose_name='نام')
    family=models.CharField(max_length=30,verbose_name='نام خانوادگی')
    email=models.EmailField(max_length=50,verbose_name='ایمیل',null=True, blank=True)
    mobile=models.CharField(max_length=50,verbose_name='موبایل',null=True, blank=True)
    is_active=models.BooleanField(default=False,verbose_name='فعال/غیرفال')
    slug=models.SlugField(max_length=200)
    
    def __str__(self):
        return self.name+' '+self.family
    
    class Meta:
        verbose_name='نویسنده'
        verbose_name_plural='نویسنده ها'
        db_table ="t_author"
        


class ArticleGroup(models.Model):
    group_title= models.CharField(max_length=100,verbose_name='عنوان گروه مقاله')

    def __str__(self):
        return self.group_title
    
    class Meta:
        verbose_name='گروه مقاله'
        verbose_name_plural='گروه مقاله ها'
        db_table ="t_article_group"
        
        
        
        
        

def image_path(instance,filename):
    ext=filename.split('.')[-1]
    name=filename.split('.')[0]
    current_date=datetime.utcnow().strftime('%Y%m%d%H%M%S')
    return f'images/articles/{name}-{current_date}.{ext}'
       
 
class Article(models.Model):
    group=models.ForeignKey(ArticleGroup,on_delete=models.CASCADE,verbose_name='گروه مقاله')
    author=models.ManyToManyField(Author,verbose_name='نویسنده مقاله')
    title=models.CharField(max_length=200,verbose_name='مقاله عنوان')
    image=models.ImageField(upload_to=image_path, verbose_name='تصویر')
    short_text=models.TextField(verbose_name='متن خلاصه')
    text=models.TextField(verbose_name='متن اصلی')
    key_words=models.CharField(max_length=200,verbose_name='کلمات کلیدی')
    register_date=models.DateField(auto_now_add=True,verbose_name='تاریخ درج مقاله')
    publish_date=models.DateField(default=timezone.now,verbose_name='تاریخ انتشار مقاله')
    update_date=models.DateField(auto_now=True,verbose_name='تاریخ آخرین ویرایش')
    is_active=models.BooleanField(default=False,verbose_name='وضعیت')
    pdf_filename=models.CharField(max_length=200,verbose_name='فایل pdf')
    view_number=models.PositiveBigIntegerField(default=0,verbose_name='تعداد بازدید')
    slug=models.SlugField(max_length=200)
    
    
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name='مقاله'
        verbose_name_plural='مقالات'
        db_table ="t_article"




def image_path2(instance,filename):
    return f'images/articles/article_{instance.article.id}/{filename}'     
 
class ArticleGallery(models.Model):
    images=models.ImageField(upload_to=image_path2, verbose_name='تصویر')
    article=models.ForeignKey(Article,on_delete=models.CASCADE,verbose_name='مقاله')

    def __str__(self):
        return str(self.images)
  
    class Meta:
        verbose_name='تصویر'
        verbose_name_plural='تصاویر'
        db_table ="t_article_gallery"
    