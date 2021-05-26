from flask import Blueprint, request, make_response
from eri.models import User
from rivescript import RiveScript   
from eri import db
from eri.models import ChatLog
from eri.infer_word2vec import CosineW2V
import re, json, os, ast, datetime

#로컬에는 라이브스크립트 없다.
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

    today = datetime.datetime.today()
    plus9 = datetime.timedelta(hours=9)  #한국시간에 맞추려 GMT+9
    today = today + plus9
    today = today.strftime('%Y.%m.%d')

    msg = query
    
    reply = bot.reply("localuesr", msg)
    ## 진행사항- 로그를 남기려 하는데 평문은 그대로 박으면 된다. 하지만 리스트인 경우(공지, 밥) 어떻게 처리할까?
    if reply[-1] == 2:
        try:
            cos = CosineW2V()
            infer_result = cos.infer(msg)
            infer_result.insert(0,reply)
            msg2 = infer_result[1][0]+infer_result[2][0]+infer_result[3][0]
            log = ChatLog(client=msg, bot=msg2, date=today)
            db.session.add(log)
            db.session.commit()
            params = {"response": infer_result}
            result = json.dumps(params, ensure_ascii=False)
            res = make_response(result)

            return res
        except Exception as e:
            print('------------0-----------------')
            params = {"response": e}
            result = json.dumps(params, ensure_ascii=False)
            res = make_response(result)
            return res



    try:   #리스트 형태인 경우  > 리스트로 변환
        reply = ast.literal_eval(reply)
        log = ChatLog(client=msg, bot=reply[0], date=today) #리스트인 경우 맨 처음에 답 종류 
        db.session.add(log)
        db.session.commit()
        reply = reply[1:]
        params = {"response": reply}
    except: 
        log = ChatLog(client=msg, bot=reply, date=today)
        db.session.add(log)
        db.session.commit()
        params = {"response": reply}

    result = json.dumps(params, ensure_ascii=False)
    res = make_response(result)

    return res

    #User.query.filter(User.name.like('%플라스크%')).all() User 모델 테이블에서 name 값 필터링.
    
    
    
