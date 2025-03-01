from django.conf import settings
from django.db import migrations

def _update_or_create_site(site_model, domain, name):
    """Update or create the site with default ID."""
    site, created = site_model.objects.update_or_create(
        id=settings.SITE_ID,
        defaults={
            "domain": domain,
            "name": name,
        },
    )

def update_site_forward(apps, schema_editor):
    """Set site domain and name."""
    Site = apps.get_model("sites", "Site")
    _update_or_create_site(Site, "example.com", "GCB_SKP")

def update_site_backward(apps, schema_editor):
    """Revert site domain and name to default."""
    Site = apps.get_model("sites", "Site")
    _update_or_create_site(Site, "example.com", "example.com")

class Migration(migrations.Migration):
    dependencies = [("sites", "0002_alter_domain_unique")]
    operations = [
        migrations.RunPython(update_site_forward, update_site_backward)
    ]
