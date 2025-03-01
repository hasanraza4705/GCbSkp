from django.urls import path
from gcbskp.eventdetails import views

urlpatterns = [
    path('event-details/<int:event_id>/', views.EventDetailsView, name='EventDetailsView'),
    # Other URL patterns as needed
]
