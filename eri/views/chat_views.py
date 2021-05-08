from flask import Blueprint, jsonify, request, make_response
from eri.models import User
from rivescript import RiveScript
import re, json, os

bp = Blueprint('chat', __name__, url_prefix='/chat')
#init.py에 app.register_blueprint(chat_views.bp) 등록!!!!

@bp.route('/', methods=['POST'])
def response():
    query = dict(request.form)['query']
    
    bot = RiveScript(utf8=True)
    bot.unicode_puctuation = re.compile(r'[.,!?;:]')
    #bot.load_directory("./eg/brain")
    bot.load_directory(os.path.join(os.path.dirname(__file__), "..", "eg", "brain"))
    bot.sort_replies()

    msg = query
    #if msg == '/quit':
    #       quit()
        
    reply = bot.reply("localuesr", msg)
    #print('Bot >',reply)
    params = {"response": reply}
    result = json.dumps(params, ensour_ascii=False)
    res = make_response(result)



    #User.query.filter(User.name.like('%플라스크%')).all()
    
    
    
    '''res = '안녕하세요? '+query + "" + time.ctime()
    
    info = User.query.all() #모든 정보의 리스트에서, for문을 돌려서  이름값 i가 in query라면 학번 리턴.
    for i in info:
        if i.name in query:
            name =  i.name
            gaeIn = str(i.gaeIn)
            res = name + '님의 학번은' + gaeIn + '입니다.'
    
    if '소프트 공지' in query:
        compuList =  ComputingNot.query.all()
        for i in range(3):
            res = compuList[i].notN + compuList[i].url + compuList[i].title + str(compuList[i].date) + '\n' 

    if '기계 공지' in query:
        iengList =  IengNot.query.all()
        for i in range(3):
            res += iengList[i].notN + iengList[i].url + iengList[i].title + str(iengList[i].date) + '\n' 
    
    params = {"response" : res}
    result = json.dumps(params, ensure_ascii=False)
    res = make_response(result)
    '''
    return res
