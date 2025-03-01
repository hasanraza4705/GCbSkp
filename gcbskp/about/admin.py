from django.contrib import admin
from django.urls import path
from django.shortcuts import redirect
from django.utils.html import format_html
from .models import About

class AboutAdmin(admin.ModelAdmin):
    list_display = ("id","heading", "formatted_content","user_id")
    
    def get_urls(self):
        urls = super().get_urls()
        custom_urls = [
            path('add/', self.admin_site.admin_view(self.add_view), name='about_about_add'),
        ]
        return custom_urls + urls

    def add_view(self, request, form_url='', extra_context=None):
        if About.objects.exists():
            return redirect('admin:about_about_changelist')  # Corrected URL pattern name
        return super().add_view(request, form_url, extra_context=extra_context)

    def changelist_view(self, request, extra_context=None):
        extra_context = extra_context or {}
        # Pass a flag to the context to determine if the "Add" button should be displayed
        extra_context['show_add_button'] = not About.objects.exists()
        return super().changelist_view(request, extra_context=extra_context)

    def formatted_content(self, obj):
        # Render the HTML content safely
        return format_html(obj.description)
    formatted_content.short_description = 'Description'

admin.site.register(About, AboutAdmin)
