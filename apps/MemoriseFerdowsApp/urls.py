from django.urls import path
import apps.MemoriseFerdowsApp.views as views

urlpatterns=[
    
    path('memory',views.ShowmMemries.as_view(),name='memoriesmain'),
    path('addmemory/',views.add_memory,name='addmemory'),
    path('like/',views.like,name='likememory'),
]



