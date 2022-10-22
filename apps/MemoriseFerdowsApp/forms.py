from django import forms
from .models import *



class MemoryForms(forms.ModelForm):
    memory_title= forms.CharField(
                            label='',
                            widget=forms.TextInput(attrs={'class': 'form-control'}))
    memory_text= forms.CharField(
                            label='',
                            widget=forms.Textarea(attrs={'class': 'form-control'}))
    class Meta:
        model=Memory
        fields=['memory_title', 'memory_text']
        



class MemoryGalleryForms(forms.ModelForm):
    ### for add html class to image field
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['memory_image_name'].widget.attrs.update({'class': 'form-control'})
        
    class Meta:
        model=MemoryGalley
        fields=['memory_image_name']


           
        
        
        
