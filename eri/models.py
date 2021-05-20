# coding: utf-8
from  eri import db

#테이블 작성 후 (export FLASK_APP=eri된 상태에서) export FLASK_ENV=development
#flask db migrate flask db upgrade

#유저용 테이블
class User(db.Model):
    __tablename__ = 'user'
    gaeIn = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(10), nullable=False)
    sosokNm = db.Column(db.String(20), nullable =False)
   

#공지용 테이블
#idx, notN, url, title, date
#인덱스, 공지(번호),링크, 제목, 날짜

#공대
class IengNot(db.Model):
    __tablename__ = 'iengNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.String(20), nullable=False )

#과기대
class ScitechNot(db.Model):
    __tablename__ = 'scitechNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.String(20), nullable=False )

#약대
class PharmacyNot(db.Model):
    __tablename__ = 'pharmacyNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.String(20), nullable=False )

#경상대
class IbusNot(db.Model):
    __tablename__ = 'ibusNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.String(20), nullable=False )

#국문대 
class LanCulNot(db.Model):
    __tablename__ = 'lanCulNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.String(20), nullable=False )

#디대
class IdesignNot(db.Model):
    __tablename__ = 'idesignNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.String(20), nullable=False )

#소융대
class ComputingNot(db.Model):
    __tablename__ = 'computingNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.String(20), nullable=False )

#언정대
class CcssNot(db.Model):
    __tablename__ = 'ccssNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.String(20), nullable=False )

#예체능대
class SportnartsNot(db.Model):
    __tablename__ = 'sportsnartsNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.String(20), nullable=False )

#학식 테이블 
class Haksik(db.Model):
    __tablename__ = 'haksikTable'
    idx = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(20), nullable=False)
    whenEat = db.Column(db.String(10), nullable=False)
    menu = db.Column(db.String(100), nullable=False)
    price = db.Column(db.String(10), nullable=False)
    date = db.Column(db.String(20), nullable=False )


#채팅 로그 테이블
class ChatLog(db.Model):
    __tablename__ = 'chatLog'
    idx = db.Column(db.Integer, primary_key=True)
    client = db.Column(db.String(100))
    bot = db.Column(db.String(100), nullable=False)
    date = db.Column(db.String(20), nullable=False)

class InforLink(db.Model):
    __tablename__ = 'infoLink'
    idx = db.Column(db.Integer, primary_key=True)
    keyword = db.Column(db.String(20), nullable=False)
    url = db.Column(db.String(500), nullable=False)