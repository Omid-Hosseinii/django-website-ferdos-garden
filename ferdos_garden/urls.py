from django.contrib import admin
from django.urls import path,include
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', include('apps.MainApp.urls')),
    path('admin/', admin.site.urls),
    # path('IntroductionApp/', include('apps.IntroductionApp.urls')),
    
]+static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)


admin.site.site_header='پنل مدیریت باغ فردوس'
admin.site.index_title='به پنل مدیریت خوش آمدید'