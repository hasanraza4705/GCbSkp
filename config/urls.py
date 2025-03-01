# ruff: noqa
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.contrib.auth import views as auth_views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.urls import include
from django.urls import path
from django.views import defaults as default_views
from django.views.generic import TemplateView
from drf_spectacular.views import SpectacularAPIView
from drf_spectacular.views import SpectacularSwaggerView
from rest_framework.authtoken.views import obtain_auth_token
from gcbskp.slider.views import sliderData
from django.conf.urls import include
from gcbskp.faculty import views
from gcbskp.teamMember.views import AboutDetails
from gcbskp.applyOnlineStep.views import ApplyDetails
from gcbskp.admissionPolicy.views import AdmissionDetails
from gcbskp.colgevent.views import EventDetails
from gcbskp.meritlist.views import merit_list_view
from gcbskp.admissionDetails.views import admissionSchedule
from gcbskp.download.views import download
from gcbskp.online_admission.views import *
from gcbskp.offered_program.views import *

admin.site.site_header = "College Administration"
admin.site.site_title = "College Admin Site"
admin.site.index_title = "Dashboard"
urlpatterns = [
    
    path("",sliderData, name="home"),
   
    path(
        "about/",
        AboutDetails,
        name="about"),
    path("apply-details/",ApplyDetails,name="apply-details"),
    path("events/",EventDetails,name="events"),
    path("admission-details/",AdmissionDetails,name="admission-details"),
    path("merit-list/",merit_list_view,name="merit-list"),
    path("admission-schedule/",admissionSchedule,name="admission-schedule"),
    path("download/",download,name="download"),
    # Django Admin, use {% url 'admin:index' %}
    # path(settings.ADMIN_URL, admin.site.urls),
    # User management
    path("users/", include("gcbskp.users.urls", namespace="users")),
   
    path('tinymce/', include('tinymce.urls')),
 
    path('accounts/login/', auth_views.LoginView.as_view(), name='login'),
    path('accounts/logout/', auth_views.LogoutView.as_view(), name='logout'),
    # path('accounts/password_reset/', auth_views.PasswordResetView.as_view(), name='password_reset'),
    # path('accounts/password_reset/done/', auth_views.PasswordResetDoneView.as_view(), name='password_reset_done'),
    # path('accounts/reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(), name='password_reset_confirm'),
    # path('accounts/reset/done/', auth_views.PasswordResetCompleteView.as_view(), name='password_reset_complete'),
    # Your stuff: custom urls includes go here
    path("home/",include("gcbskp.slider.urls")),
    path("event-details/",include("gcbskp.eventdetails.urls")),
    path("admission-schedule/",include("gcbskp.admissionDetails.urls")),
    path("about/",include("gcbskp.teamMember.urls")),
    path('apply-details/', include("gcbskp.applyOnlineStep.urls",namespace="apply-details")),
    path('events/',include("gcbskp.colgevent.urls",namespace="events")),
    path('teachers/', views.teacher_view, name='teacher_view'),

    path("donwload/",include("gcbskp.download.urls",namespace="download")),
    path('admission-details/',include("gcbskp.admissionPolicy.urls",namespace="admission-details")),
    path('merit-list/',include("gcbskp.meritlist.urls",namespace="merit-list")),
    path("news/", include("gcbskp.news.urls")), 
    path("offered_program/", include("gcbskp.offered_program.urls", namespace="offered_program")),

    path("student-registration/",include("gcbskp.student_registration.urls",namespace="student-registration")),
    path("online_admission/",include("gcbskp.online_admission.urls",namespace="online_admission")),
    path('student-details/',include("gcbskp.student.urls",namespace="student-details")),
    path('admin/', admin.site.urls),
    path('admin/password_reset/', auth_views.PasswordResetView.as_view(), name='password_reset'),
    path('admin/password_reset/done/', auth_views.PasswordResetDoneView.as_view(), name='password_reset_done'),
    path('admin/reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(), name='password_reset_confirm'),
    path('admin/reset/done/', auth_views.PasswordResetCompleteView.as_view(), name='password_reset_complete'),

    path('courses/',include("gcbskp.coursegroup.urls",namespace="courses")),
    # Media files
    *static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT),
    
]
if settings.DEBUG:
    # Static file serving when using Gunicorn + Uvicorn for local web socket development
    urlpatterns += staticfiles_urlpatterns()

# API URLS
urlpatterns += [
    # API base url
    path("api/", include("config.api_router")),
    # DRF auth token
    path("api/auth-token/", obtain_auth_token),
    path("api/schema/", SpectacularAPIView.as_view(), name="api-schema"),
    path(
        "api/docs/",
        SpectacularSwaggerView.as_view(url_name="api-schema"),
        name="api-docs",
    ),
]

if settings.DEBUG:
    # This allows the error pages to be debugged during development, just visit
    # these url in browser to see how these error pages look like.
    urlpatterns += [
        path(
            "400/",
            default_views.bad_request,
            kwargs={"exception": Exception("Bad Request!")},
        ),
        path(
            "403/",
            default_views.permission_denied,
            kwargs={"exception": Exception("Permission Denied")},
        ),
        path(
            "404/",
            default_views.page_not_found,
            kwargs={"exception": Exception("Page not Found")},
        ),
        path("500/", default_views.server_error),
    ]
    if "debug_toolbar" in settings.INSTALLED_APPS:
        import debug_toolbar

        urlpatterns = [path("__debug__/", include(debug_toolbar.urls))] + urlpatterns
