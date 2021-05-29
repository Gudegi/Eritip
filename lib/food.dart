import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

bool _isOpenp = false;
bool _isOpens = false;
bool _isOpend = false;
bool _isOpenc = false;

bool _proisOpen = false;
String _prol_a = '교직원A중식';
String _prol_b = '교직원B중식';
String _prod = '교직원석식';
String _prol_a_price = '';
String _prol_b_price = '';
String _prod_price = '';

bool _stuisOpen = false;
String _stul_1 = '학생1특식';
String _stul_2 = '학생2특식';
String _stul_1_price = '';
String _stul_2_price = '';

bool _dormisOpen = false;
String _dormb = '기숙사조식';
String _dorml = '기숙사중식';
String _dormd = '기숙사석식';
String _dormd2 = '기숙사석식';
String _dormb_price = '';
String _dorml_price = '';
String _dormd_price = '';
String _dormd2_price = '';

bool _centerisOpen = false;
String _centerl_H = '창보한식중식';
String _centerl_1 = '창보일품중식';
String _centerd = '창보석식';
String _centerl_H_price = '';
String _centerl_1_price = '';
String _centerd_price = '';

double height1 = 10;
double height2 = 10;

class Food extends StatefulWidget {
  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  static const twilight_blue = const Color(0xff0b4c86);
  static const brownish_grey = const Color(0xff707070);
  static const light_grey = const Color(0xfff4f4f4);

  Future ProFoodget() async {
    var url = Uri.parse('http://13.124.213.117:5000/haksik/');
    var response = await http.get(url);
    final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
    var pro = jsonResult['교직원식당'];
    setState(() {
      if (pro == null) {
        _proisOpen = false;
      } else {
        _proisOpen = true;
      }
    });
    if (pro != null) {
      _proisOpen = true;
      if (pro[0]['menu'] == '-') {
        _prol_a = '오늘은 운영하지 않습니다.';
        _prol_a_price = '-';
      } else {
        _prol_a = pro[0]['menu'];
        _prol_a_price = pro[0]['price'];
      }
      if (pro[1]['menu'] == '-') {
        _prol_b = '오늘은 운영하지 않습니다.';
        _prol_b_price = '-';
      } else {
        _prol_b = pro[1]['menu'];
        _prol_b_price = pro[1]['price'];
      }
      if (pro[2]['menu'] == '-') {
        _prod = '오늘은 운영하지 않습니다.';
        _prod_price = '-';
      } else {
        _prod = pro[2]['menu'];
        _prod_price = pro[2]['price'];
      }
    }
    setState(() {
      if (_isOpenp) {
        _isOpenp = false;
        print('1');
      } else {
        _isOpenp = true;
        print('0');
      }
    });
  }

  Future StuFoodget() async {
    //var url = Uri.parse('http://61.73.162.173:5000/haksik/');
    var url = Uri.parse('http://13.124.213.117:5000/haksik/');
    var response = await http.get(url);
    final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
    var stu = jsonResult['학생식당'];
    setState(() {
      if (stu == null) {
        _stuisOpen = false;
      } else {
        _stuisOpen = true;
      }
    });
    if (stu != null) {
      if (stu[0]['menu'] == '-') {
        _stul_1 = '오늘은 운영하지 않습니다.';
        _stul_1_price = '-';
      } else {
        _stul_1 = stu[0]['menu'];
        _stul_1_price = stu[0]['price'];
      }
      if (stu[1]['menu'] == '-') {
        _stul_2 = '오늘은 운영하지 않습니다.';
        _stul_2_price = '-';
      } else {
        _stul_2 = stu[1]['menu'];
        _stul_2_price = stu[1]['price'];
      }
    }
    setState(() {
      if (_isOpens) {
        _isOpens = false;
        print('1');
      } else {
        _isOpens = true;
        print('0');
      }
    });
  }

  Future DormFoodget() async {
    var url = Uri.parse('http://13.124.213.117:5000/haksik/');
    var response = await http.get(url);
    final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
    var dorm = jsonResult['창의인재원식당'];
    setState(() {
      if (dorm == null) {
        _dormisOpen = false;
      } else {
        _dormisOpen = true;
      }
    });

    if (dorm != null) {
      if (dorm[0]['menu'] == '-' ||
          dorm[0]['menu'] == '[특식1] - 일요일 조식 운영없습니다.-') {
        _dormb = '[특식1] 오늘은 운영하지 않습니다.';
        _dormb_price = '-';
      } else {
        _dormb = dorm[0]['menu'];
        _dormb_price = dorm[0]['price'];
      }
      if (dorm[1]['menu'] == '-') {
        _dorml = '오늘은 운영하지 않습니다.';
        _dorml_price = '-';
      } else {
        _dorml = dorm[1]['menu'];
        _dorml_price = dorm[1]['price'];
      }
      if (dorm[2]['menu'] == '-') {
        _dormd = '오늘은 운영하지 않습니다.';
        _dormd_price = '-';
      } else {
        _dormd = dorm[2]['menu'];
        _dormd_price = dorm[2]['price'];
      }
      if (dorm.length == 3) {
        _dormd2 = '[특식2] 오늘은 운영하지 않습니다.';
        _dormd2_price = '-';
      } else {
        if (dorm[3]['menu'] == '-') {
          _dormd2 = '[특식2] 오늘은 운영하지 않습니다.';
          _dormd2_price = '-';
        } else {
          _dormd2 = dorm[3]['menu'];
          _dormd2_price = dorm[3]['price'];
        }
      }
    }
    setState(() {
      if (_isOpend) {
        _isOpend = false;
        print('1');
      } else {
        _isOpend = true;
        print('0');
      }
    });
  }

  Future CenterFoodget() async {
    var url = Uri.parse('http://13.124.213.117:5000/haksik/');
    var response = await http.get(url);
    final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
    var center = jsonResult['창업보육센터'];

    setState(() {
      if (center == null) {
        _centerisOpen = false;
      } else {
        _centerisOpen = true;
      }
    });

    if (center != null) {
      if (center[0]['menu'] == '-') {
        _centerl_H = '오늘은 운영하지 않습니다.';
        _centerl_H_price = '-';
      } else {
        _centerl_H = center[0]['menu'];
        _centerl_H_price = center[0]['price'];
      }
      if (center[1]['menu'] == '[일품]') {
        _centerl_1 = '[일품] 오늘은 운영하지 않습니다.';
        _centerl_1_price = '-';
      } else {
        _centerl_1 = center[1]['menu'];
        _centerl_1_price = center[1]['price'];
      }
      if (center[2]['menu'] == '-') {
        _centerd = '오늘은 운영하지 않습니다.';
        _centerd_price = '-';
      } else {
        _centerd = center[2]['menu'];
        _centerd_price = center[2]['price'];
      }
    }
    setState(() {
      if (_isOpenc) {
        _isOpenc = false;
        print('1');
      } else {
        _isOpenc = true;
        print('0');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.14,
            child: ListTile(
              title: Center(
                child: Text(
                  '오늘의 메뉴',
                  style: TextStyle(
                      fontFamily: "GodoM",
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: twilight_blue,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
          ),
          Container(
            child: Bubble(
              shadowColor: Colors.black,
              elevation: 3,
              child: ListTile(
                dense: true,
                onTap: ProFoodget,
                //Color(0xff6c95ef),
                title: Text(
                  '교직원식당',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: "GodoM",
                      fontStyle: FontStyle.normal),
                ),
                trailing: Icon(
                  _isOpenp
                      ? Icons.keyboard_arrow_up_rounded
                      : Icons.keyboard_arrow_down_rounded,
                  size: 30,
                ),
              ),
            ),
          ),
          ListTile(
            title: _isOpenp
                ? ProFood()
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: Text(
                              '위치 : 복지관 3층',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "GothicA1",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4.0, horizontal: 8.0),
                                child: Text(
                                  '운영시간 :  ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "GothicA1",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    '중식 11:30 ~ 13:30',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "GothicA1",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    '석식 17:00 ~ 18:30',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "GothicA1",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15),
                                  ),
                                  SizedBox(height: 4)
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
          ),
          Container(
            child: Bubble(
              shadowColor: Colors.black,
              elevation: 3,
              child: ListTile(
                dense: true,
                onTap: StuFoodget,
                title: Text(
                  '학생식당',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: "GodoM",
                      fontStyle: FontStyle.normal),
                ),
                trailing: Icon(
                  _isOpens
                      ? Icons.keyboard_arrow_up_rounded
                      : Icons.keyboard_arrow_down_rounded,
                  size: 30,
                ),
              ),
            ),
          ),
          ListTile(
            title: _isOpens
                ? StuFood()
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: Text(
                              '위치 : 복지관 2층',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "GothicA1",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4.0, horizontal: 8.0),
                                child: Text(
                                  '운영시간 :  ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "GothicA1Medium",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    '중식 11:30 ~ 13:30',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "GothicA1",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15),
                                  ),
                                  SizedBox(height: 4)
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
          ),
          Container(
            child: Bubble(
              shadowColor: Colors.black,
              elevation: 3,
              child: ListTile(
                dense: true,
                onTap: DormFoodget,
                title: Text(
                  '창의인재원식당',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: "GodoM",
                      fontStyle: FontStyle.normal),
                ),
                trailing: Icon(
                  _isOpend
                      ? Icons.keyboard_arrow_up_rounded
                      : Icons.keyboard_arrow_down_rounded,
                  size: 30,
                ),
              ),
            ),
          ),
          ListTile(
            title: _isOpend
                ? DormFood()
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: Text(
                              '위치 : 창의관 1층',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "GothicA1",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4.0, horizontal: 8.0),
                                child: Text(
                                  '운영시간 :  ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "GothicA1",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    '조식 07:50 ~ 09:00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "GothicA1",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    '중식 11:30 ~ 13:20',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "GothicA1",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    '석식 17:10 ~ 18:40',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "GothicA1",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15),
                                  ),
                                  SizedBox(height: 4)
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
          ),
          Container(
            child: Bubble(
              shadowColor: Colors.black,
              elevation: 3,
              child: ListTile(
                dense: true,
                onTap: CenterFoodget,
                title: Text(
                  '창업보육센터',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: "GodoM",
                      fontStyle: FontStyle.normal),
                ),
                trailing: Icon(
                  _isOpenc
                      ? Icons.keyboard_arrow_up_rounded
                      : Icons.keyboard_arrow_down_rounded,
                  size: 30,
                ),
              ),
            ),
          ),
          ListTile(
            title: _isOpenc
                ? CenterFood()
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            child: Text(
                              '위치 : 창업보육센터 지하 1층',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "GothicA1",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4.0, horizontal: 8.0),
                                child: Text(
                                  '운영시간 :  ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "GothicA1",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 15),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    '중식 11:30 ~ 13:30',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "GothicA1",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    '석식 17:00 ~ 18:30',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "GothicA1",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15),
                                  ),
                                  SizedBox(height: 4)
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
          ),
          Container(
            child: Bubble(
              shadowColor: Colors.black,
              elevation: 3,
              child: ListTile(
                dense: true,
                title: Text(
                  '푸드코트',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: "GodoM",
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
          ),
          ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 8.0),
                      child: Text(
                        '위치 : 복지관 3층',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "GothicA1",
                            fontStyle: FontStyle.normal,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4.0, horizontal: 8.0),
                          child: Text(
                            '운영시간 :  ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "GothicA1",
                                fontStyle: FontStyle.normal,
                                fontSize: 15),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              '코로나19 상황 안정시까지 휴업입니다.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "GothicA1",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15),
                            ),
                            SizedBox(height: 4)
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProFood extends StatefulWidget {
  @override
  _ProFoodState createState() => _ProFoodState();
}

class _ProFoodState extends State<ProFood> {
  static const brownish_grey = const Color(0xff707070);
  static const twilight_blue = const Color(0xff0b4c86);

  @override
  Widget build(BuildContext context) {
    return (_proisOpen == false)
        ? Column(
            children: <Widget>[
              Text(
                '오늘은 운영하지 않습니다.',
                style: TextStyle(fontFamily: "GothicA1"),
              )
            ],
          )
        : Column(
            children: [
              Row(
                children: [
                  Text('중식',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontFamily: "GothicA1")),
                ],
              ),
              Divider(
                thickness: 2,
                color: twilight_blue,
                height: height1, //divider의 패딩부분
              ),
              Row(
                children: [
                  Expanded(child: Text('$_prol_a')),
                  Text('  $_prol_a_price',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: twilight_blue,
                          fontWeight: FontWeight.w700,
                          fontFamily: "GothicA1")),
                ],
              ),
              Divider(
                thickness: 1,
                color: twilight_blue,
                height: height2, //divider의 패딩부분
              ),
              Row(
                children: [
                  Expanded(child: Text('$_prol_b')),
                  Text('  $_prol_b_price',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: twilight_blue,
                          fontWeight: FontWeight.w700,
                          fontFamily: "GothicA1")),
                ],
              ),
              Divider(
                thickness: 1,
                color: twilight_blue,
                height: height2, //divider의 패딩부분
              ),
              Row(
                children: [
                  Text('석식',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontFamily: "GothicA1")),
                ],
              ),
              Divider(
                thickness: 2,
                color: twilight_blue,
                height: height1, //divider의 패딩부분
              ),
              Row(
                children: [
                  Expanded(child: Text('$_prod')),
                  Text('  $_prod_price',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: twilight_blue,
                          fontWeight: FontWeight.w700,
                          fontFamily: "GothicA1")),
                ],
              )
            ],
          );
  }
}

class StuFood extends StatefulWidget {
  @override
  _StuFoodState createState() => _StuFoodState();
}

class _StuFoodState extends State<StuFood> {
  static const brownish_grey = const Color(0xff707070);
  static const twilight_blue = const Color(0xff0b4c86);

  @override
  Widget build(BuildContext context) {
    return (_stuisOpen == false)
        ? Column(
            children: <Widget>[
              Text(
                '오늘은 운영하지 않습니다.',
                style: TextStyle(fontFamily: "GothicA1"),
              )
            ],
          )
        : Column(
            children: [
              Row(
                children: [
                  Text('중식',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontFamily: "GothicA1")),
                ],
              ),
              Divider(
                thickness: 2,
                color: twilight_blue,
                height: height1, //divider의 패딩부분
              ),
              Row(
                children: [
                  Expanded(child: Text('$_stul_1')),
                  Text(
                    '  $_stul_1_price',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: twilight_blue,
                        fontWeight: FontWeight.w700,
                        fontFamily: "GothicA1"),
                  )
                ],
              ),
              Divider(
                thickness: 1,
                color: twilight_blue,
                height: height2, //divider의 패딩부분
              ),
              Row(
                children: [
                  Expanded(child: Text('$_stul_2')),
                  Text(
                    '  $_stul_2_price',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: twilight_blue,
                        fontWeight: FontWeight.w700,
                        fontFamily: "GothicA1"),
                  )
                ],
              ),
            ],
          );
  }
}

class DormFood extends StatefulWidget {
  @override
  _DormFoodState createState() => _DormFoodState();
}

class _DormFoodState extends State<DormFood> {
  static const brownish_grey = const Color(0xff707070);
  static const twilight_blue = const Color(0xff0b4c86);

  @override
  Widget build(BuildContext context) {
    return (_dormisOpen == false)
        ? Column(
            children: <Widget>[
              Text('오늘은 운영하지 않습니다.', style: TextStyle(fontFamily: "GothicA1"))
            ],
          )
        : Column(
            children: [
              Row(
                children: [
                  Text('조식',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontFamily: "GothicA1")),
                ],
              ),
              Divider(
                thickness: 2,
                color: twilight_blue,
                height: height1, //divider의 패딩부분
              ),
              Row(
                children: [
                  Expanded(child: Text('$_dormb')),
                  Text(
                    '  $_dormb_price',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: twilight_blue,
                        fontWeight: FontWeight.w700,
                        fontFamily: "GothicA1"),
                  )
                ],
              ),
              Divider(
                thickness: 1,
                color: twilight_blue,
                height: height2, //divider의 패딩부분
              ),
              Row(
                children: [
                  Text('중식',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontFamily: "GothicA1")),
                ],
              ),
              Divider(
                thickness: 2,
                color: twilight_blue,
                height: height1, //divider의 패딩부분
              ),
              Row(
                children: [
                  Expanded(child: Text('$_dorml')),
                  Text(
                    '  $_dorml_price',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: twilight_blue,
                        fontWeight: FontWeight.w700,
                        fontFamily: "GothicA1"),
                  )
                ],
              ),
              Divider(
                thickness: 1,
                color: twilight_blue,
                height: height2, //divider의 패딩부분
              ),
              Row(
                children: [
                  Text('석식',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontFamily: "GothicA1")),
                ],
              ),
              Divider(
                thickness: 2,
                color: twilight_blue,
                height: height1, //divider의 패딩부분
              ),
              Row(
                children: [
                  Expanded(child: Text('$_dormd')),
                  Text(
                    '  $_dormd_price',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: "GothicA1",
                        color: twilight_blue,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Divider(
                thickness: 1,
                color: twilight_blue,
                height: height2, //divider의 패딩부분
              ),
              Row(
                children: [
                  Expanded(child: Text('$_dormd2')),
                  Text(
                    '  $_dormd2_price',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: "GothicA1",
                        color: twilight_blue,
                        fontWeight: FontWeight.w700),
                  )
                ],
              )
            ],
          );
  }
}

class CenterFood extends StatefulWidget {
  @override
  _CenterFoodState createState() => _CenterFoodState();
}

class _CenterFoodState extends State<CenterFood> {
  static const brownish_grey = const Color(0xff707070);
  static const twilight_blue = const Color(0xff0b4c86);

  @override
  Widget build(BuildContext context) {
    return (_centerisOpen == false)
        ? Column(
            children: <Widget>[
              Text(
                '오늘은 운영하지 않습니다.',
                style: TextStyle(fontFamily: "GothicA1"),
              )
            ],
          )
        : Column(
            children: [
              Row(
                children: [
                  Text('중식',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontFamily: "GothicA1")),
                ],
              ),
              Divider(
                thickness: 2,
                color: twilight_blue,
                height: height1, //divider의 패딩부분
              ),
              Row(
                children: [
                  Expanded(child: Text('$_centerl_H')),
                  Text(
                    '  $_centerl_H_price',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: "GothicA1",
                        color: twilight_blue,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Divider(
                thickness: 1,
                color: twilight_blue,
                height: height2, //divider의 패딩부분
              ),
              Row(
                children: [
                  Expanded(child: Text('$_centerl_1')),
                  Text(
                    '  $_centerl_1_price',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: "GothicA1",
                        color: twilight_blue,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Divider(
                thickness: 1,
                color: twilight_blue,
                height: height2, //divider의 패딩부분
              ),
              Row(
                children: [
                  Text('석식',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontFamily: "GothicA1")),
                ],
              ),
              Divider(
                thickness: 2,
                color: twilight_blue,
                height: height1, //divider의 패딩부분
              ),
              Row(
                children: [
                  Expanded(child: Text('$_centerd')),
                  Text(
                    '  $_centerd_price',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: "GothicA1",
                        color: twilight_blue,
                        fontWeight: FontWeight.w700),
                  )
                ],
              )
            ],
          );
  }
}
