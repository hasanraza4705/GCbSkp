from django.apps import AppConfig


class TeammemberConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'gcbskp.teamMember'
    
    def ready(self):
        import gcbskp.teamMember.signals
