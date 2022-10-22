from django import forms
from django.contrib.auth.models import User
from django.core.exceptions import ValidationError

class RegisterUserForm(forms.ModelForm):
    first_name= forms.CharField(
        label='نام',
        error_messages={'required':'این فیلد نمی تواند خالی باشد'},
        widget=forms.TextInput(attrs={'class':'f_register form-control','placeholder':'نام را وارد کنید'}))
    
    last_name= forms.CharField(
        label='نام خانوادگی',
        error_messages={'required':'این فیلد نمی تواند خالی باشد'},
        widget=forms.TextInput(attrs={'class':'u_register form-control','placeholder':'نام خانوادگی را وارد کنید'}))
    
    username= forms.CharField(
        label='نام کاربری',
        error_messages={'required':'این فیلد نمی تواند خالی باشد'},
        widget=forms.TextInput(attrs={'class':'l_register form-control','placeholder':'نام کاربری را وارد کنید'}))
    
    password1= forms.CharField(
        label='رمز عبور',
        error_messages={'required':'این فیلد نمی تواند خالی باشد'},
        widget=forms.PasswordInput(attrs={'class':'p1_register form-control','placeholder':'رمز عبور را وارد کنید'}))
    
    password2= forms.CharField(
        label='تکرار رمز عبور',
        error_messages={'required':'این فیلد نمی تواند خالی باشد'},
        widget=forms.PasswordInput(attrs={'class':'p2_register form-control','placeholder':'تکرار رمز عبور را وارد کنید'}))
    
    class Meta:
        model=User
        fields=['first_name','last_name','username', 'password1', 'password2',]
    
        
    def clean_password2(self):
        password1=self.cleaned_data.get("password1")    
        password2=self.cleaned_data.get("password2")
        if password1 and password2 and password1!=password2:
            raise forms.ValidationError('تکرار رمز عبور اشتباه است')
        return password2
    
    
    def clean_username(self):
        username= self.cleaned_data.get("username")
        if len(username)<4:
            raise ValidationError('نام کاربری باید بیشتر از 4 کارکتر باشد')
        return username
    
#--------------------------------------------------------------------------------------------------------                
                               
class LoginForm(forms.Form):
    username=forms.CharField(
        label='نام کاربری',
        error_messages={'required':'این فیلد نمی تواند خالی باشد'},
        widget=forms.TextInput(attrs={'class':'u_login form-control','placeholder':'نام کاربری را وارد کنید'}))
    
    password=forms.CharField(
        label='رمز عبور',
        error_messages={'required':'این فیلد نمی تواند خالی باشد'},
        widget=forms.PasswordInput(attrs={'class':'p_login form-control','placeholder':'رمز عبور را وارد کنید'}))                