from flask import Blueprint, jsonify, request
from eri.models import User
import  json, time

bp = Blueprint('chat', __name__, url_prefix='/chat')


@bp.route('/', methods=['POST'])
def response():
    query = dict(request.form)['query']
    
    #User.query.filter(User.name.like('%플라스크%')).all()
    res = '안녕하세요? '+query + "" + time.ctime()
    info = User.query.all() #모든 정보의 리스트에서, for문을 돌려서  이름값 i가 in query라면 학번 리턴.
    for i in info:
        if i.name in query:
            name =  i.name
            gaeIn = i.gaeIn 
            res = name + '님의 학번은' + gaeIn + '입니다.'
     
    return jsonify({"response" : res})
