from django.apps import AppConfig


class ColgeventConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'gcbskp.colgevent'

    def ready(self):
        import gcbskp.colgevent.signals
