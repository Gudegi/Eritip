import 'package:flutter/material.dart';
import 'package:flutter_fianl_prj/shuttle_to.dart';

final int n_hour = DateTime.now().hour;
final int n_minute = DateTime.now().minute;

class Shuttle_when1 extends StatelessWidget {
  @override
  String title1,title2;
  int minuse1,minuse2;

  Widget build(BuildContext context) {
    if (n_hour >= 19){
      title1 = '순환';
      minuse1 = 15 - n_minute;
      minuse2 = 45 - n_minute;
    } else {
      if(n_minute > 05){
        title1 = '순환';
        minuse1 = 15 - n_minute;
        title2 = '직행';
        minuse2 = 25 - n_minute;
      } else if (n_minute > 15) {
        title1 = '직행';
        minuse1 = 25 - n_minute;
        title2 = '직행';
        minuse2 = 35 - n_minute;
      } else if (n_minute > 25) {
        title1 = '직행';
        minuse1 = 35 - n_minute;
        title2 = '순환';
        minuse2 = 45 - n_minute;
      }else if (n_minute > 35) {
        title1 = '순환';
        minuse1 = 45 - n_minute;
        title2 = '진행';
        minuse2 = 55 - n_minute;
      } else if (n_minute > 45) {
        title1 = '직행';
        minuse1 = 55 - n_minute;
        title2 = '직행';
        if (n_minute > 00 && n_minute < 05)
          minuse2 = 05 - n_minute;
        else
          minuse2 = 65 - n_minute;
      }
    }
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(left:8.0,right: 8.0),
          child: Column(
            children: [
              Container(
                child : Text(title1 + minuse1.toString() +" 분",
                    style:TextStyle(
                        fontFamily: "Gothic",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 12,
                        color: Colors.black
                    )
                )
              ),
              Container(
              child : Text(title2 + minuse2.toString() +" 분",
                  style:TextStyle( //시간받아오기
                  fontFamily: "Gothic",
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: 12,
                  color: Colors.black
              )
              ),
            ),
            ],
          )
      ),
    );
  }
}


class Shuttle extends StatelessWidget {
  static const clear_blue = const Color(0xa31959e6);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body:
          ListView(
            children: <Widget>[
              ListTile(
                  tileColor: Colors.white,
                  title: Center(child: Text("셔틀 시간표",
                      style:TextStyle(
                          fontFamily: "Gothic",
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 40.0,
                          color:clear_blue),
                      textAlign: TextAlign.left),
                  )
              ),
              ListTile(
                tileColor: clear_blue,
                title: Container(
                  padding: EdgeInsets.only(left:8.0,right: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child:  SizedBox(
                              width: (MediaQuery.of(context).size.width) ,
                              child :FlatButton(
                                  child: Text('창의인재원 → 한대앞역',
                                      style:TextStyle(
                                          fontFamily: "Gothic",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25,
                                          color: Colors.black
                                      )),
                                  onPressed: (){Navigator.push(
                                      context,MaterialPageRoute(builder : (context) => Shuttle_1()));},
                                      color : Colors.white,
                                  shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(10.0), )
                                      )
                          ),
                        )
                      ],
                    )
                ),
                subtitle:Container(
                    padding: EdgeInsets.only(left:8.0,right: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child:  SizedBox(
                              width: (MediaQuery.of(context).size.width) ,
                              child :FlatButton(
                                  child: Text("상세 시간 클릭", style:TextStyle( //시간받아오기
                                      fontFamily: "Gothic",
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Colors.black
                                  )
                                  ),
                                  onPressed: (){Navigator.push(
                                      context,MaterialPageRoute(builder : (context) => Shuttle_1()));},
                                  color : Colors.white,
                                  shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(10.0), )
                              )
                          ),
                        )
                      ],
                    )
                ),
              ),
              ListTile(
                tileColor: clear_blue,
                title: Container(
                    padding: EdgeInsets.only(left:8.0,right: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child:  SizedBox(
                              width: (MediaQuery.of(context).size.width) ,
                              child :FlatButton(
                                  child: Text('창의인재원 → 예술인APT',
                                      style:TextStyle(
                                          fontFamily: "Gothic",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25,
                                          color: Colors.black
                                      )),
                                  onPressed: (){Navigator.push(
                                      context,MaterialPageRoute(builder : (context) => Shuttle_2()));},
                                  color : Colors.white,
                                  shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(10.0), )
                              )
                          ),
                        )
                      ],
                    )
                ),
                subtitle: Container(
                    padding: EdgeInsets.only(left:8.0,right: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child:  SizedBox(
                              width: (MediaQuery.of(context).size.width) ,
                              child :FlatButton(
                                  child: Text("상세 시간 클릭", style:TextStyle( //시간받아오기
                                      fontFamily: "Gothic",
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Colors.black
                                  )),
                                  onPressed: (){Navigator.push(
                                      context,MaterialPageRoute(builder : (context) => Shuttle_1()));},
                                  color : Colors.white,
                                  shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(10.0), )
                              )
                          ),
                        )
                      ],
                    )
                ), //시간받아오기
              ),
              ListTile(
                tileColor: clear_blue,
                title: Container(
                    padding: EdgeInsets.only(left:8.0,right: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child:  SizedBox(
                              width: (MediaQuery.of(context).size.width) ,
                              child :FlatButton(
                                  child: Text('셔틀콕 → 한대앞역',
                                      style:TextStyle(
                                          fontFamily: "Gothic",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25,
                                          color: Colors.black
                                      )),
                                  onPressed: (){Navigator.push(
                                      context,MaterialPageRoute(builder : (context) => Shuttle_3()));},
                                  color : Colors.white,
                                  shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(10.0), )
                              )
                          ),
                        )
                      ],
                    )
                ),
                subtitle: Container(
                    padding: EdgeInsets.only(left:8.0,right: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child:  SizedBox(
                              width: (MediaQuery.of(context).size.width) ,
                              child :FlatButton(
                                  child: Text("상세 시간 클릭", style:TextStyle( //시간받아오기
                                      fontFamily: "Gothic",
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Colors.black
                                  )
                                  ),
                                  onPressed: (){Navigator.push(
                                      context,MaterialPageRoute(builder : (context) => Shuttle_1()));},
                                  color : Colors.white,
                                  shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(10.0), )
                              )
                          ),
                        )
                      ],
                    )
                ), //시간받아오기
              ),
              ListTile(
                tileColor: clear_blue,
                title: Container(
                    padding: EdgeInsets.only(left:8.0,right: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child:  SizedBox(
                              width: (MediaQuery.of(context).size.width) ,
                              child :FlatButton(
                                  child: Text('셔틀콕 -> 예술인APT',
                                      style:TextStyle(
                                          fontFamily: "Gothic",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25,
                                          color: Colors.black
                                      )),
                                  onPressed: (){Navigator.push(
                                      context,MaterialPageRoute(builder : (context) => Shuttle_4()));},
                                  color : Colors.white,
                                  shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(10.0), )
                              )
                          ),
                        )
                      ],
                    )
                ),
                subtitle: Container(
                    padding: EdgeInsets.only(left:8.0,right: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child:  SizedBox(
                              width: (MediaQuery.of(context).size.width) ,
                              child :FlatButton(
                                  child: Text("상세 시간 클릭", style:TextStyle( //시간받아오기
                                      fontFamily: "Gothic",
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Colors.black
                                  )),
                                  onPressed: (){Navigator.push(
                                      context,MaterialPageRoute(builder : (context) => Shuttle_1()));},
                                  color : Colors.white,
                                  shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(10.0), )
                              )
                          ),
                        )
                      ],
                    )
                ), //시간받아오기 //시간받아오기
              ),
              ListTile(
                tileColor: clear_blue,
                title: Container(
                    padding: EdgeInsets.only(left:8.0,right: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child:  SizedBox(
                              width: (MediaQuery.of(context).size.width) ,
                              child :FlatButton(
                                  child: Text('한대앞역',
                                      style:TextStyle(
                                          fontFamily: "Gothic",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25,
                                          color: Colors.black
                                      )),
                                  onPressed: (){Navigator.push(
                                      context,MaterialPageRoute(builder : (context) => Shuttle_5()));},
                                  color : Colors.white,
                                  shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(10.0), )
                              )
                          ),
                        )
                      ],
                    )
                ),
                subtitle: Container(
                    padding: EdgeInsets.only(left:8.0,right: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child:  SizedBox(
                              width: (MediaQuery.of(context).size.width) ,
                              child :FlatButton(
                                  child: Text("상세 시간 클릭", style:TextStyle( //시간받아오기
                                      fontFamily: "Gothic",
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Colors.black
                                  )),
                                  onPressed: (){Navigator.push(
                                      context,MaterialPageRoute(builder : (context) => Shuttle_1()));},
                                  color : Colors.white,
                                  shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(10.0), )
                              )
                          ),
                        )
                      ],
                    )
                ), //시간받아오기
              ),
              ListTile(
                tileColor: clear_blue,
                title: Container(
                    padding: EdgeInsets.only(left:8.0,right: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child:  SizedBox(
                              width: (MediaQuery.of(context).size.width) ,
                              child :FlatButton(
                                  child: Text('예술인APT',
                                      style:TextStyle(
                                          fontFamily: "Gothic",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25,
                                          color: Colors.black
                                      )),
                                  onPressed: (){Navigator.push(
                                      context,MaterialPageRoute(builder : (context) => Shuttle_6()));},
                                  color : Colors.white,
                                  shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(10.0), )
                              )
                          ),
                        )
                      ],
                    )
                ),
                subtitle: Container(
                    padding: EdgeInsets.only(left:8.0,right: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child:  SizedBox(
                              width: (MediaQuery.of(context).size.width) ,
                              child :FlatButton(
                                  child: Text("상세 시간 클릭", style:TextStyle( //시간받아오기
                                      fontFamily: "Gothic",
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Colors.black
                                  )),
                                  onPressed: (){Navigator.push(
                                      context,MaterialPageRoute(builder : (context) => Shuttle_1()));},
                                  color : Colors.white,
                                  shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(10.0), )
                              )
                          ),
                        )
                      ],
                    )
                ), //시간받아오기
              ),
            ],
          ),
        )
    );
  }
}
