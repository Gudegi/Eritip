from flask import Blueprint, make_response
from eri import db
from eri.models import Haksik
import json, datetime
import pandas as pd

bp = Blueprint('haksik', __name__, url_prefix='/haksik')



@bp.route('/', methods=['GET'])
def haksikNotice():
    today = datetime.datetime.today()
    plus9 = datetime.timedelta(hours=9)  #한국시간에 맞추려 GMT+9
    today = today + plus9
    today = today.strftime('%Y.%m.%d')
    haksikTable = Haksik.query.filter(Haksik.date==today).all() #오늘 날짜꺼 빼옴
    haksikList = []
    for i in range(len(haksikTable)):
        haksikList.append([haksikTable[i].idx, haksikTable[i].title, haksikTable[i].whenEat, haksikTable[i].menu, haksikTable[i].price, haksikTable[i].date])
    column_name = ['dbIdx','title','whenEat','menu','price','date']
    df = pd.DataFrame(haksikList,columns =column_name)

    idxList = [] #가게들이 바뀔 때 idx값
    buffer = None
    cnt = 0
    for i in df['title']:
        if buffer != i:
            buffer = i
            idxList.append(cnt)
            cnt+=1
        else:
            cnt+=1
            pass
    
    shapes = df[['whenEat','menu','price','date']].to_dict('records')

    data = dict()
    for i in range(len(idxList)):
        try:  #인덱싱 에러가 나올때 > idxList가 뒤에 더 없다 > 
            data[df['title'][idxList[i]]] = shapes[idxList[i]:idxList[i+1]]
        except:
            data[df['title'][idxList[i]]] = shapes[idxList[i]:]

    result = json.dumps(data,ensure_ascii=False, indent=4)
    res = make_response(result)
    
    return  res