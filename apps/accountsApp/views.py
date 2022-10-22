from django.shortcuts import render,redirect
from django.views import View
from .forms import RegisterUserForm,LoginForm
from django.contrib.auth.models import User
from django.contrib import messages
from django.contrib.auth import authenticate,login,logout
# Create your views here.



class RegisterUserView(View):
    def get(self, request, *args, **kwargs):
        form=RegisterUserForm()
        return render(request,'accountsApp/register.html',{'form':form})


    def post(self, request, *args, **kwargs):
        form=RegisterUserForm(request.POST)
        if form.is_valid():
            data=form.cleaned_data
            user=User(
                    first_name=data['first_name'],
                    last_name=data['last_name'],
                    username=data['username'],)
            user.set_password(data['password1'])
            user.save()
            messages.success(request,'ثبت نام شما با موفقیت انجام شد','success')
            return redirect('mainpage')
        else:
            messages.error(request,'اطلاعات وارد شده معتبر نمی باشد','danger')
            return render(request,'accountsApp/register.html',{'form':form})
#---------------------------------------------------------------------------------------

class LoginUserView(View):
    def get(self, request, *args, **kwargs):
        form=LoginForm()
        return render(request,'accountsApp/login.html',{'form':form})
    
    def post(self, request, *args, **kwargs):
        form=LoginForm(request.POST)
        if form.is_valid():
            data=form.cleaned_data
            
            user=authenticate(username=data['username'],password=data['password'])
            if user is not None:
                messages.success(request,'ورود با موفقیت انجام شد')
                login(request,user)
                next_url=request.GET.get('next')
                if next_url is not None:
                    return redirect(next_url)
                else:
                    return redirect('mainpage')
            else:
                messages.warning(request,'کاربر یافت نشد')
                return render(request,'accountsApp/login.html',{'form':form})
        
        else:
            messages.warning(request,'اطلاعات وارد شده معتبر نمی باشد')
            return render(request,'accountsApp/login.html',{'form':form})                   
#---------------------------------------------------------------------------------------
      
class LogoutUserView(View):
    def get(self, request, *args, **kwargs):
        logout(request)
        messages.success(request,'با موفقیت خارج شدید')
        return redirect('mainpage')     