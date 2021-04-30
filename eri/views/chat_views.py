from flask import Blueprint, jsonify, request, make_response
from eri.models import User
from eri.models import ComputingNot
from eri.models import IengNot
import  json, time

bp = Blueprint('chat', __name__, url_prefix='/chat')
#init.py에 app.register_blueprint(chat_views.bp) 등록!!!!

@bp.route('/', methods=['POST'])
def response():
    query = dict(request.form)['query']
    
    #User.query.filter(User.name.like('%플라스크%')).all()
    res = '안녕하세요? '+query + "" + time.ctime()
    
    info = User.query.all() #모든 정보의 리스트에서, for문을 돌려서  이름값 i가 in query라면 학번 리턴.
    for i in info:
        if i.name in query:
            name =  i.name
            gaeIn = str(i.gaeIn)
            res = name + '님의 학번은' + gaeIn + '입니다.'
    
    if '소프트 공지' in query:
        compuList =  ComputingNot.query.all()
        for i in range(3):
            res += compuList[i].idx + cocmpuList[i].notN + compuList[i].url + compuList[i].title + compuList[i].date + '\n' 

    if '기계 공지' in query:
        iengList =  IengNot.query.all()
        for i in range(3):
            res += iengList[i].idx + iengList[i].notN + iengList[i].url + iengList[i].title + iengList[i].date + '\n' 
    
    params = {"response" : res}
    result = json.dumps(params, ensure_ascii=False)
    res = make_response(result)

    return res
