from django.apps import AppConfig


class ApplyonlinestepConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'gcbskp.applyOnlineStep'
    
    def ready(self):
        import gcbskp.applyOnlineStep.signals
