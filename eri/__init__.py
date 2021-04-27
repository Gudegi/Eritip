from flask import Flask
from flask_migrate import Migrate
from flask_sqlalchemy import SQLAlchemy
from . import config

db = SQLAlchemy()
migrate = Migrate()


def create_app():
    app = Flask(__name__)


    app.config.from_object(config)
    app.config['JSON_AS_ASCII'] = False

    db.init_app(app)
    migrate.init_app(app, db)

    from . import models


    #블루프린트

    from .views import main_views, create_views, chat_views
    app.register_blueprint(main_views.bp)


    app.register_blueprint(create_views.bp)
    app.register_blueprint(chat_views.bp)
    return app