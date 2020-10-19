from django.apps import AppConfig


class LearningSystemAppConfig(AppConfig):
    name = 'learning_system_app'

    def ready(self):
        import learning_system_app.signals

