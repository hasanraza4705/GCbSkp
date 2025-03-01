# forms.py
from django import forms
from gcbskp.student_registration.models import RegisteredStudent
from django.contrib.auth.hashers import make_password
class StudentRegistrationForm(forms.ModelForm):
    password = forms.CharField(
        widget=forms.PasswordInput(attrs={
            'class': 'form-control',
            'placeholder': 'Enter your password',
        })
    )
    confirmPassword = forms.CharField(
        widget=forms.PasswordInput(attrs={
            'class': 'form-control',
            'placeholder': 'Confirm your password'
        })
    )
    
    confirm_email = forms.EmailField(
        widget=forms.EmailInput(attrs={
            'class': 'form-control',
            'placeholder': 'Confirm your email address'
        })
    )
    
    cnic_no = forms.CharField(
        widget=forms.TextInput(attrs={
            'class': 'form-control',
            'placeholder': 'Enter your CNIC number',
            'maxlength':"15"

        })
    )

    def clean_confirm_email(self):
        email = self.cleaned_data.get('email')
        confirm_email = self.cleaned_data.get('confirm_email')
        
        if email != confirm_email:
            raise forms.ValidationError("Email and Confirm Email do not match.")
        
        return confirm_email

    class Meta:
        model = RegisteredStudent
        fields = ['Name', 'email', 'confirm_email', 'password', 'confirmPassword', 'cnic_no']
        widgets = {
            'Name': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Enter your Name'
            }),
            'email': forms.EmailInput(attrs={
                'class': 'form-control',
                'placeholder': 'Enter your email address'
            }),
            'cnic_no': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Enter CNIC/B-form number',
                'id': 'cnic-input'
            }),
        }

    def clean(self):
        cleaned_data = super().clean()
        password = cleaned_data.get('password')
        confirmPassword = cleaned_data.get('confirmPassword')
        email = cleaned_data.get('email')
        confirm_email = cleaned_data.get('confirm_email')

        if password and confirmPassword and password != confirmPassword:
            self.add_error('confirmPassword', 'Passwords do not match')
        if email and confirm_email and email != confirm_email:
            self.add_error('confirm_email', 'Emails do not match.')  
        
        return cleaned_data

    def save(self, commit=True):
        student = super().save(commit=False)
        student.password = make_password(self.cleaned_data['password'])
        if commit:
            student.save()
        return student


    
class StudentLoginForm(forms.Form):
    email = forms.EmailField(
        widget=forms.EmailInput(attrs={
            'class': 'form-control',
            'placeholder': 'Enter your email address'
        })
    )
    password = forms.CharField(
        widget=forms.PasswordInput(attrs={
            'class': 'form-control',
            'placeholder': 'Enter your password'
        })
    )
