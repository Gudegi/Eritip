from flask import Blueprint, jsonify, request
from eri import db
from eri.models import User
import json

bp = Blueprint('create', __name__, url_prefix='/create')


@bp.route('/', methods=['POST'])
def create():
    params = request.get_json(force=True) #request의 헤더가 html인 경우, get_json()의 리턴은 None이 됨, 이를 해결하려면 force=True
    #json.loads(request.get_data(), encoding='utf-8')
    #if len(params) == 0:
    #    return 'No parameter'

    params_str = params['name']
    #for key in params.keys():
     #   params_str += 'key: {}, value: {}<br>'.format(key, params[key])
    test = User(name=params['name'], sosokNm=params['sosokNm'], gaeIn=params['gaeIn'])
    db.session.add(test)
    db.session.commit()

    return params_str