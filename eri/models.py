# coding: utf-8
from  eri import db


class User(db.Model):
    __tablename__ = 'user'
    gaeIn = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(10), nullable=False)
    sosokNm = db.Column(db.String(20), nullable =False)
   

