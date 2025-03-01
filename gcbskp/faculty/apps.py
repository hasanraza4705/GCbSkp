from django.apps import AppConfig


class FacultyConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'gcbskp.faculty'
    
    def ready(self):
        import gcbskp.faculty.signals

