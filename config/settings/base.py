# ruff: noqa: ERA001, E501
"""Base settings to build other settings files upon."""

from pathlib import Path
import environ

BASE_DIR = Path(__file__).resolve(strict=True).parent.parent.parent
# gcbskp/
APPS_DIR = BASE_DIR / "gcbskp"
env = environ.Env()

READ_DOT_ENV_FILE = env.bool("DJANGO_READ_DOT_ENV_FILE", default=False)
if READ_DOT_ENV_FILE:
    # OS environment variables take precedence over variables from .env
    env.read_env(str(BASE_DIR / ".env"))

# GENERAL
# ------------------------------------------------------------------------------
DEBUG = env.bool("DJANGO_DEBUG", False)
TIME_ZONE = "Asia/Karachi"
LANGUAGE_CODE = "en-us"
SITE_ID = 1
USE_I18N = True
USE_TZ = True
LOCALE_PATHS = [str(BASE_DIR / "locale")]

# DATABASES
# ------------------------------------------------------------------------------
DATABASES = {
   "default": 
       env.db(
           'DATABASE_URL',
           default='mysql://root:Inteldev@123@localhost/colg_backup'
           ),
}
DATABASES["default"]["ATOMIC_REQUESTS"] = True
DEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"

# URLS
# ------------------------------------------------------------------------------
ROOT_URLCONF = "config.urls"
WSGI_APPLICATION = "config.wsgi.application"

# APPS
# ------------------------------------------------------------------------------
DJANGO_APPS = [
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.sites",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    "django.contrib.admin",
    "django.forms",
]
THIRD_PARTY_APPS = [
    "crispy_bootstrap5",
    'tinymce',
]

LOCAL_APPS = [
    "gcbskp.users",
    "gcbskp.slider",
    "gcbskp.department",
    "gcbskp.news",
    "gcbskp.offered_program",
    "gcbskp.review",
    "gcbskp.coursegroup",
    "gcbskp.faculty",
    "gcbskp.teamMember",
    "gcbskp.about",
    "gcbskp.applyOnlineStep",
    "gcbskp.admissionPolicy",
    "gcbskp.colgevent",
    "gcbskp.eventdetails",
    "admissionDetails",
    "gcbskp.meritlist",
    "gcbskp.download",
   'gcbskp.online_admission',
    "gcbskp.student",
    "gcbskp.student_registration",
    "gcbskp.admissionStatus",
    "gcbskp.PopUpData",
    "gcbskp.colgLogo",
    "gcbskp.prospectusFee",
]

INSTALLED_APPS = DJANGO_APPS + THIRD_PARTY_APPS + LOCAL_APPS

# MIGRATIONS
# ------------------------------------------------------------------------------
MIGRATION_MODULES = {"sites": "gcbskp.contrib.sites.migrations"}

# AUTHENTICATION
# ------------------------------------------------------------------------------
AUTHENTICATION_BACKENDS = [
    "django.contrib.auth.backends.ModelBackend",
]
AUTH_USER_MODEL = "users.User"
LOGIN_REDIRECT_URL = "users:redirect"
LOGIN_URL = "login"

# PASSWORDS
# ------------------------------------------------------------------------------
PASSWORD_HASHERS = [
    "django.contrib.auth.hashers.Argon2PasswordHasher",
    "django.contrib.auth.hashers.PBKDF2PasswordHasher",
    "django.contrib.auth.hashers.PBKDF2SHA1PasswordHasher",
    "django.contrib.auth.hashers.BCryptSHA256PasswordHasher",
]
AUTH_PASSWORD_VALIDATORS = [
    {"NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator"},
    {"NAME": "django.contrib.auth.password_validation.MinimumLengthValidator"},
    {"NAME": "django.contrib.auth.password_validation.CommonPasswordValidator"},
    {"NAME": "django.contrib.auth.password_validation.NumericPasswordValidator"},
]

# MIDDLEWARE
# ------------------------------------------------------------------------------
MIDDLEWARE = [
    "django.middleware.security.SecurityMiddleware",
    "corsheaders.middleware.CorsMiddleware",
    "whitenoise.middleware.WhiteNoiseMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.locale.LocaleMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.csrf.CsrfViewMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
]

# STATIC
# ------------------------------------------------------------------------------
STATIC_ROOT = str(BASE_DIR / "staticfiles")
STATIC_URL = "/static/"
STATICFILES_DIRS = [str(APPS_DIR / "static")]
STATICFILES_FINDERS = [
    "django.contrib.staticfiles.finders.FileSystemFinder",
    "django.contrib.staticfiles.finders.AppDirectoriesFinder",
]

# MEDIA
# ------------------------------------------------------------------------------
MEDIA_ROOT = str(APPS_DIR / "media")
MEDIA_URL = "/media/"

# TEMPLATES
# ------------------------------------------------------------------------------
TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [str(APPS_DIR / "templates")],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.template.context_processors.debug",
                "django.template.context_processors.request",
                "django.contrib.auth.context_processors.auth",
                "django.template.context_processors.i18n",
                "django.template.context_processors.media",
                "django.template.context_processors.static",
                "django.template.context_processors.tz",
                "django.contrib.messages.context_processors.messages",
                'student_registration.context_processors.auth_user'
            ],
        },
    },
]

# django-compressor for static library configuration 
# ------------------------------------------------------------------------------
# https://django-compressor.readthedocs.io/en/latest/quickstart/#installation
INSTALLED_APPS += ["compressor"]
STATICFILES_FINDERS += ["compressor.finders.CompressorFinder"]


# FORM_RENDERER = "django.forms.renderers.TemplatesSetting"

# FIXTURES
# ------------------------------------------------------------------------------
FIXTURE_DIRS = (str(APPS_DIR / "fixtures"),)

# SECURITY
# ------------------------------------------------------------------------------
SESSION_COOKIE_HTTPONLY = True
CSRF_COOKIE_HTTPONLY = True
X_FRAME_OPTIONS = "DENY"

# EMAIL
# ------------------------------------------------------------------------------
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.your-email-provider.com'  # E.g., smtp.gmail.com
EMAIL_PORT = 587  # or 465 for SSL
EMAIL_USE_TLS = True  # or EMAIL_USE_SSL = True
EMAIL_HOST_USER = 'mamunagulfareen@gmail.com'
EMAIL_HOST_PASSWORD = 'gulfareen0123'
DEFAULT_FROM_EMAIL = 'mamunagulfareen@gmail.com'

# ADMIN
# ------------------------------------------------------------------------------
ADMIN_URL = "admin/"
ADMINS = [("admin", "admin@gmail.com")]
MANAGERS = ADMINS

# LOGGING
# ------------------------------------------------------------------------------
LOGGING = {
    "version": 1,
    "disable_existing_loggers": False,
    "formatters": {
        "verbose": {
            "format": "%(levelname)s %(asctime)s %(module)s %(process)d %(thread)d %(message)s",
        },
    },
    "handlers": {
        "console": {
            "level": "DEBUG",
            "class": "logging.StreamHandler",
            "formatter": "verbose",
        },
    },
    "root": {"level": "INFO", "handlers": ["console"]},
}

# django-cors-headers
CORS_URLS_REGEX = r"^/api/.*$"

TINYMCE_DEFAULT_CONFIG = {
    'language': 'en',
    'directionality': 'ltr',
    'height': 360,
    'plugins': 'lists link image preview codesample contextmenu media table paste code help wordcount directionality emoticons template paste textpattern imagetools codesample toc help visualblocks visualchars  print preview hr anchor pagebreak searchreplace',
    'toolbar': 'undo redo | styleselect | bold italic |  ltr rtl |alignleft aligncenter alignright alignjustify | outdent indent | link image | codesample | table | bullist numlist | code',
    'menubar': 'file edit view insert format tools table help',
    'contextmenu': 'formats | link image',
}