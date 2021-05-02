import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
bool _isOpenp=false;
bool _isOpens=false;
bool _isOpend=false;
bool _isOpenc=false;

class Food extends StatefulWidget {

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  static const twilight_blue = const Color(0xff0b4c86);
  static const brownish_grey = const Color(0xff707070);
  static const light_grey = const Color(0xfff4f4f4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            SizedBox(height: (MediaQuery.of(context).size.height) * 0.14,
              child: ListTile(
                title: Center(
                  child: Text('오늘의 메뉴', style: TextStyle(
                      fontFamily: "Gothic",
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: twilight_blue,
                      fontStyle: FontStyle.normal)),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border:Border.all(color: brownish_grey, width: 1)
              ),
              child: ListTile(
                dense: true,
                onTap: (){
                  setState(() {
                    if(_isOpenp){
                      _isOpenp=false;
                      print('1');
                    } else{
                      _isOpenp=true;
                      print('0');
                    }
                  });
                },
                tileColor: light_grey,
                title: Text('교직원식당',style: TextStyle
                  (fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500,
                fontFamily: "Gothic", fontStyle: FontStyle.normal),),
                trailing: Icon(_isOpenp?Icons.keyboard_arrow_up_rounded:Icons.keyboard_arrow_down_rounded,size:30,),

              ),
            ),
            ListTile(
              title:_isOpenp?ProFood():Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('위치 : 복지관 3층',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "Gothic",
                              fontStyle: FontStyle.normal,
                              fontSize: 15
                          ),),
                      ),
                       ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('운영시간   ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "Gothic",
                                fontStyle: FontStyle.normal,
                                fontSize: 15
                            ),),
                          Column(
                            children: [
                              Text('중식 11:30 ~ 13:30',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Gothic",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15
                                ),),
                              Text('석식 17:00 ~ 18:30',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Gothic",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15
                                ),),
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
            ,
            Container(
              decoration: BoxDecoration(
                  border:Border.all(color: brownish_grey, width: 1)
              ),
              child: ListTile(
                dense: true,
                onTap: (){
                  setState(() {
                    if(_isOpens){
                      _isOpens=false;
                      print('1');
                    } else{
                      _isOpens=true;
                      print('0');
                    }
                  });
                },
                tileColor: light_grey,
                title: Text('학생식당',style: TextStyle
                  (fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500,
                    fontFamily: "Gothic", fontStyle: FontStyle.normal),),
                trailing: Icon(_isOpens?Icons.keyboard_arrow_up_rounded:Icons.keyboard_arrow_down_rounded,size:30,),

              ),
            ),
            ListTile(
              title:_isOpens?StuFood():Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('위치 : 복지관 2층',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "Gothic",
                              fontStyle: FontStyle.normal,
                              fontSize: 15
                          ),),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('운영시간   ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "Gothic",
                                fontStyle: FontStyle.normal,
                                fontSize: 15
                            ),),
                          Column(
                            children: [
                              Text('중식 11:30 ~ 13:30',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Gothic",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15
                                ),),

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
              decoration: BoxDecoration(
                  border:Border.all(color: brownish_grey, width: 1)
              ),
              child: ListTile(
                dense: true,
                onTap: (){
                  setState(() {
                    if(_isOpend){
                      _isOpend=false;
                      print('1');
                    } else{
                      _isOpend=true;
                      print('0');
                    }
                  });
                },
                tileColor: light_grey,
                title: Text('창의인재원식당',style: TextStyle
                  (fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500,
                    fontFamily: "Gothic", fontStyle: FontStyle.normal),),
                trailing: Icon(_isOpend?Icons.keyboard_arrow_up_rounded:Icons.keyboard_arrow_down_rounded,size:30,),

              ),
            ),
            ListTile(
              title:_isOpend?DormFood():Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('위치 : 창의관 1층',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "Gothic",
                              fontStyle: FontStyle.normal,
                              fontSize: 15
                          ),),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('운영시간   ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "Gothic",
                                fontStyle: FontStyle.normal,
                                fontSize: 15
                            ),),
                          Column(
                            children: [
                              Text('조식 07:50 ~ 09:00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Gothic",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15
                                ),),
                              Text('중식 11:30 ~ 13:20',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Gothic",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15
                                ),),
                              Text('석식 17:10 ~ 18:40',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Gothic",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15
                                ),),
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
            ,
            Container(
              decoration: BoxDecoration(
                  border:Border.all(color: brownish_grey, width: 1)
              ),
              child: ListTile(
                dense: true,
                onTap: (){
                  setState(() {
                    if(_isOpenc){
                      _isOpenc=false;
                      print('1');
                    } else{
                      _isOpenc=true;
                      print('0');
                    }
                  });
                },
                tileColor: light_grey,
                title: Text('창업보육센터',style: TextStyle
                  (fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500,
                    fontFamily: "Gothic", fontStyle: FontStyle.normal),),
                trailing: Icon(_isOpenc?Icons.keyboard_arrow_up_rounded:Icons.keyboard_arrow_down_rounded,size:30,),

              ),
            ),
            ListTile(
              title:_isOpenc?CenterFood():Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('위치 : 창업보육센터 지하 1층',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "Gothic",
                              fontStyle: FontStyle.normal,
                              fontSize: 15
                          ),),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('운영시간   ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "Gothic",
                                fontStyle: FontStyle.normal,
                                fontSize: 15
                            ),),
                          Column(
                            children: [
                              Text('중식 11:30 ~ 13:30',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Gothic",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15
                                ),),
                              Text('석식 17:00 ~ 18:30',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Gothic",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15
                                ),),
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
  String _prol_a = '교직원A중식';
  String _prol_b = '교직원B중식';
  String _prod = '교직원석식';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('중식',style: TextStyle(fontWeight: FontWeight.w600),),
          ],
        ),
        Divider(
          thickness: 2,
          color:brownish_grey,
          height: 5,//divider의 패딩부분
        ),
        Row(
          children: [
            Expanded(child: Text('[중식A] : $_prol_a')),
            _prol_a==null?Text(''):Text('  5000원',textAlign: TextAlign.right,
              style: TextStyle(color: twilight_blue, fontWeight: FontWeight.w700),)
          ],
        ),
        Divider(
          thickness: 1,
          color:brownish_grey,
          height: 5,//divider의 패딩부분
        ),
        Row(
          children: [
            Expanded(child: Text('[중식B] : $_prol_b')),
            _prol_b==null?Text(''):Text('  5000원',textAlign: TextAlign.right,
              style: TextStyle(color: twilight_blue, fontWeight: FontWeight.w700),)
          ],
        ),
        Divider(
          thickness: 3,
          color:brownish_grey,
          height: 5,//divider의 패딩부분
        ),
        Row(
          children: [
            Text('석식',style: TextStyle(fontWeight: FontWeight.w600),)
          ],
        ),
        Divider(
          thickness: 2,
          color:brownish_grey,
          height: 5,//divider의 패딩부분
        ),
        Row(
          children: [
            Expanded(child: Text('$_prol_b')),
            _prod==null?Text(''):Text('  5000원',textAlign: TextAlign.right,
              style: TextStyle(color: twilight_blue,fontWeight: FontWeight.w700),)
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
  String _stul_1 = '학생1특식';
  String _stul_2 = '학생2특식';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('중식',style: TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
        Divider(
          thickness: 2,
          color:brownish_grey,
          height: 5,//divider의 패딩부분
        ),
        Row(
          children: [
            Expanded(child: Text('[특식] : $_stul_1')),
            _stul_1==null?Text(''):Text('  3500원',textAlign: TextAlign.right,
              style: TextStyle(color: twilight_blue, fontWeight: FontWeight.w700),)
          ],
        ),
        Divider(
          thickness: 1,
          color:brownish_grey,
          height: 5,//divider의 패딩부분
        ),
        Row(
          children: [
            Expanded(child: Text('[특식] : $_stul_2')),
            _stul_2==null?Text(''):Text('  4000원',textAlign: TextAlign.right,
              style: TextStyle(color: twilight_blue, fontWeight: FontWeight.w700),)
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
  String _dormb = '기숙사조식';
  String _dorml = '기숙사중식';
  String _dormd = '기숙사석식';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('조식',style: TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
        Divider(
          thickness: 2,
          color:brownish_grey,
          height: 5,//divider의 패딩부분
        ),
        Row(
          children: [
            Expanded(child: Text('[특식] : $_dormb')),
            _dormb==null?Text(''):Text('  3500원',textAlign: TextAlign.right,
              style: TextStyle(color: twilight_blue, fontWeight: FontWeight.w700),)
          ],
        ),
        Divider(
          thickness: 3,
          color:brownish_grey,
          height: 5,//divider의 패딩부분
        ),
        Row(
          children: [
            Text('중식',style: TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
        Divider(
          thickness: 2,
          color:brownish_grey,
          height: 5,//divider의 패딩부분
        ),
        Row(
          children: [
            Expanded(child: Text('[특식] : $_dorml')),
            _dorml==null?Text(''):Text('  3500원',textAlign: TextAlign.right,
              style: TextStyle(color: twilight_blue, fontWeight: FontWeight.w700),)
          ],
        ),
        Divider(
          thickness: 3,
          color:brownish_grey,
          height: 5,//divider의 패딩부분
        ),
        Row(
          children: [
            Text('석식',style: TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
        Divider(
          thickness:2,
          color:brownish_grey,
          height: 5,//divider의 패딩부분
        ),
        Row(
          children: [
            Expanded(child: Text('[특식] : $_dormd')),
            _dormd==null?Text(''):Text('  3500원',textAlign: TextAlign.right,
              style: TextStyle(color: twilight_blue, fontWeight: FontWeight.w700),)
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
  String _centerl_H = '창보한식중식';
  String _centerl_1= '창보일품중식';
  String _centerd = '창보석식';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('중식',style: TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
        Divider(
          thickness:2,
          color:brownish_grey,
          height: 5,//divider의 패딩부분
        ),
        Row(
          children: [
            Expanded(child: Text('[한식] : $_centerl_H')),
            _centerl_H==null?Text(''):Text('  5000원',textAlign: TextAlign.right,
              style: TextStyle(color: twilight_blue, fontWeight: FontWeight.w700),)
          ],
        ),
        Divider(
          thickness:1,
          color:brownish_grey,
          height: 5,//divider의 패딩부분
        ),
        Row(
          children: [
            Expanded(child: Text('[일품] : $_centerl_1')),
            _centerl_1==null?Text(''):Text('  5000원',textAlign: TextAlign.right,
              style: TextStyle(color: twilight_blue, fontWeight: FontWeight.w700),)
          ],
        ),
        Divider(
          thickness:3,
          color:brownish_grey,
          height: 5,//divider의 패딩부분
        ),
        Row(
          children: [
            Text('석식',style: TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
        Divider(
          thickness:2,
          color:brownish_grey,
          height: 5,//divider의 패딩부분
        ),
        Row(
          children: [
            Expanded(child: Text('[한식] : $_centerd')),
            _centerd==null?Text(''):Text('  5000원',textAlign: TextAlign.right,
              style: TextStyle(color: twilight_blue, fontWeight: FontWeight.w700),)
          ],
        )
      ],
    );
  }
}





