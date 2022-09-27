from django.contrib import admin
from .models import Place,VisitorType,TicketPrice,Message
# Register your models here.

@admin.register(Place)
class PlaceAdmin(admin.ModelAdmin):
    list_display=("place_name","description","place_image_name","visit_date_day","visit_time","Terms_Conditions","more_information","register_date",)
    list_filter=("place_name","description","visit_time","register_date","visit_date_day",)
    search_field=("place_name","description","more_information",)
    ordering=["place_name"]




@admin.register(VisitorType)
class VisitorTypeAdmin(admin.ModelAdmin):
    list_display=("type_name",)
    list_filter=("id","type_name",)
    search_field=("type_name","id",)



@admin.register(TicketPrice)
class TicketPriceAdmin(admin.ModelAdmin):
    list_display=("visitor_type","place","price",)
    list_filter=("visitor_type","place",)
    search_field=("visitor_type","place",)
  


@admin.register(Message)
class MessageAdmin(admin.ModelAdmin):
    list_display=("full_name","message","subject","register_date","is_seen","email",)
    list_filter=("full_name","subject","register_date","is_seen",)
    search_field=("full_name","family","subject","message",)
   
    
    
    