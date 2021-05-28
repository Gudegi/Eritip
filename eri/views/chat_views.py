from flask import Blueprint, request, make_response
from rivescript import RiveScript   
from eri import db
from eri.models import ChatLog
from eri.models import InforLink
import re, json, os, ast, datetime
import pandas as pd
import jpype
from konlpy.tag import Kkma
from tensorflow.keras.preprocessing.text import Tokenizer
from tensorflow.keras.preprocessing.sequence import pad_sequences
from tensorflow.keras.models import load_model

cwd = os.getcwd()
model = load_model(cwd+'/eri/eg/brain/Model/ERITIP_1DCNN_98per.h5')
noun_kkm = ['NNP', 'NNG', 'OL', 'NP','VV', 'VA' ] #꼬꼬마에서 명사들 품사
kkma = Kkma()
tokenizer = Tokenizer()
with open(cwd+'/eri/eg/brain/Model/wordIndex.json') as json_file:
  word_index = json.load(json_file)
  tokenizer.word_index = word_index

#품사 태깅 제거 명사 토크나이징
def tokenizer_kkma_noun2(doc):
  jpype.attachThreadToJVM()
  token_doc = [ word[0] for word in kkma.pos(doc) if word[1] in noun_kkm ]
  return token_doc


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
    if reply[-1] == '?' and reply[-2] == '?':
        toksen = tokenizer_kkma_noun2(msg)
        toksen = tokenizer.texts_to_sequences(toksen)
        toksen = pad_sequences(toksen, 9)
        predict_array = model.predict(toksen).argmax(axis=1)
        #{'경상대공지': 0, '공과대공지': 1, '과기대공지': 2, '국문대공지': 3, '디자인대공지': 4, '소프트공지': 5, '약학대공지': 6, '언정대공지': 7}
        dic = {0:'경상대공지', 1:'공과대공지', 2:'과기대공지', 3:'국문대공지', 4:'디자인대공지', 5:'소프트공지', 6:'약학대공지', 7:'언정대공지'}
        result = [reply, dic[predict_array[0]], dic[predict_array[1]], dic[predict_array[2]] ]
        msg2 = (result[1]+result[2]+result[3])
        result[1] = result[1] + '/./' + InforLink.query.filter(InforLink.keyword==result[1])
        result[2] = result[2] + '/./' + InforLink.query.filter(InforLink.keyword==result[2])
        result[3] = result[3] + '/./' + InforLink.query.filter(InforLink.keyword==result[3])
        log = ChatLog(client=msg, bot=msg2, date=today)
        db.session.add(log)
        db.session.commit()
        params = {"response": result}
        result = json.dumps(params, ensure_ascii=False)
        res = make_response(result)

        return res
    else:
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
    

    
