
from django.contrib import admin
from gcbskp.student_registration.models import RegisteredStudent

class RegisteredStudentAdmin(admin.ModelAdmin):
    list_display = ('username', 'email', 'first_name', 'last_name')
    search_fields = ('username', 'email', 'first_name', 'last_name')
    ordering = ('username',)
    fields = ('username', 'email', 'first_name', 'last_name', 'password')
    readonly_fields = ('password',)  # Make password read-only to avoid direct edits

admin.site.register(RegisteredStudent, RegisteredStudentAdmin)
admin.site.unregister(RegisteredStudent)
