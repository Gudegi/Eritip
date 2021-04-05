import os


BASE_DIR = os.path.dirname(__file__)


SQLALCHEMY_DATABASE_URI = 'mysql+mysqlconnector://admin:eritip18!@database-eritip.cvgx9v3ektbw.ap-northeast-2.rds.amazonaws.com:3306/eridb?charset=utf8'

SQLALCHEMY_TRACK_MODIFICATIONS = False