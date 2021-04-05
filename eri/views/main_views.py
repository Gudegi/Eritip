from flask import Blueprint, jsonify
from eri.models import User
import requests, json

bp = Blueprint('main', __name__, url_prefix='/')


@bp.route('/<int:idx>')
def hello(idx):
    #idx = int(idx)
    user_list = User.query.order_by(User.name.desc()) #이름 내림차순
    return  jsonify({'name':user_list[idx].name,
                    'gaeIn':user_list[idx].gaeIn,
                    'sosokNm':user_list[idx].sosokNm})


#get요청으로 post보내버리기
@bp.route('/<name>/<gaeIn>/<sosokNm>')
def req_post(name,gaeIn,sosokNm):
    params = {
        'name':name,
        'gaeIn':gaeIn,
        'sosokNm':sosokNm
    }
    res = requests.post("http://127.0.0.1:5000/create/", data=json.dumps(params)) #이부분으로 URL로 입력한 정보를 post방식으로 보낸다.
    return res.text
