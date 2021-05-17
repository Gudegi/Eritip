import 'package:flutter/material.dart';
import 'package:flutter_fianl_prj/login.dart';

class Ready2Login extends StatelessWidget {

  static const twilight_blue = const Color(0xff0b4c86);
  static const clear_blue_64 = const Color(0xa31959e6);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: clear_blue_64,
        child: Column(
            children: <Widget>[
              SizedBox(height: (MediaQuery.of(context).size.height)*0.25,)
              ,
              Text('ERITIP',
                  style:TextStyle(
                      fontFamily: "Gothic",
                      fontWeight: FontWeight.bold,
                      fontSize: 53,
                      color:twilight_blue)),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/loginhyimg.png',width: (MediaQuery.of(context).size.height)*0.4,),
                ],
              ),
              SizedBox(height: 5,),
              Text('에리카의 모든 팁, 에리팁',
                  style:TextStyle(
                      fontFamily: "Gothic",
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                      color:twilight_blue)),
              SizedBox(
                height: (MediaQuery.of(context).size.height)*0.15,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                BoxShadow(
                color: Color(0x29000000),

                  offset: Offset(10,13),
                  blurRadius: 10,
                  spreadRadius: 0, // changes position of shadow
              ),
            ]
                ),
                child: SizedBox(
                  height: (MediaQuery.of(context).size.height)*0.07,
                  width: (MediaQuery.of(context).size.width)*0.85,
                  child: FlatButton(
                    color: Colors.white,

                     shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(10.0), ),
                    child: Row(

                      children: [Image.asset('images/symbol.png'),
                        SizedBox(width: 25,),
                        Text('HY-IN 아이디로 로그인',
                            style:TextStyle(
    color:  twilight_blue,
    fontWeight: FontWeight.w400,
    fontFamily: "GodoM",
    fontStyle:  FontStyle.normal,
    fontSize: 20.0
    ),
    textAlign: TextAlign.left
    ),
                      ],
                    )

                    ,
                      onPressed: (){Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()));}),
                ),
              )//버튼추가
            ]),
      ),
    );
  }
}
