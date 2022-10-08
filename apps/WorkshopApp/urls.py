from django.urls import path
from .views import *


urlpatterns=[
    path('',WorkshopList.as_view(),name='workshopindex'),
    path('workshopreport/<int:pk>',WorkshopReport.as_view(),name='workshop_report'),
    
]