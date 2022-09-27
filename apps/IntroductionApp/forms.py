from django import forms


class MessageForm(forms.Form):
    full_name= forms.CharField(max_length=60)
    email= forms.EmailField(max_length=150,required=True)
    subject= forms.CharField(max_length=100)
    message= forms.CharField(widget=forms.Textarea(attrs={'class': 'form-control'}))
    
    full_name.widget.attrs.update({'class':'form-control','placeholder':'نام خود را به صورت کامل وارد کنید'})
    email.widget.attrs.update({'class':'form-control','placeholder':'ایمیل'})
    subject.widget.attrs.update({'class':'form-control','placeholder':'موضوع پیام'})
    