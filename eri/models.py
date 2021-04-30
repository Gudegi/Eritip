# coding: utf-8
from  eri import db

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
    date = db.Column(db.Date(), nullable=False )

#과기대
class ScitechNot(db.Model):
    __tablename__ = 'scitechNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.Date(), nullable=False )

#약대
class PharmacyNot(db.Model):
    __tablename__ = 'pharmacyNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.Date(), nullable=False )

#경상대
class IbusNot(db.Model):
    __tablename__ = 'ibusNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.Date(), nullable=False )

#국문대 
class LanCulNot(db.Model):
    __tablename__ = 'lanCulNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.Date(), nullable=False )

#디대
class IdesignNot(db.Model):
    __tablename__ = 'idesNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.Date(), nullable=False )

#소융대
class ComputingNot(db.Model):
    __tablename__ = 'computingNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.Date(), nullable=False )

#언정대
class CcssNot(db.Model):
    __tablename__ = 'ccssNotice'
    idx = db.Column(db.Integer, primary_key=True)
    notN = db.Column(db.String(10), nullable=False)
    url = db.Column(db.String(500), nullable=False)
    title = db.Column(db.String(100), nullable=False)
    date = db.Column(db.Date(), nullable=False )

