from flask import Flask

from app.config import Config
from app.database import db
from app.views import init_views


def create_app(config: Config) -> Flask:
    """ инициализация приложения"""
    application = Flask(__name__)
    application.config.from_object(config)
    application.app_context().push()
    return application


def configure_app(application: Flask) -> None:
    """ настройка приложения """
    db.init_app(application)
    db.create_all()


if __name__ == '__main__':
    app_config = Config()  # получение информации о БД
    my_app = create_app(app_config)  # создание приложения Flask
    configure_app(my_app)  # настройка приложения
    init_views(my_app)  # получение маршрутов
    my_app.run(debug=True)  # запуск приложения
