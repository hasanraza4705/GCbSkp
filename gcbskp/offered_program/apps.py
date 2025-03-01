from django.apps import AppConfig


class OfferedProgramConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'gcbskp.offered_program'
    
    def ready(self):
        import gcbskp.offered_program.signals
