import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:eritip/shuttle_to.dart';

class Shuttle extends StatelessWidget {
  static const clear_blue = const Color(0xa31959e6);
  static const twilight_blue = const Color(0xff0b4c86);
  static const brownish_grey = const Color(0xff707070);
  static const light_grey = const Color(0xfff4f4f4);
  FontWeight fontWeight1 = FontWeight.w600;
  FontWeight fontWeight2 = FontWeight.w500;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
              height: (MediaQuery.of(context).size.height) * 0.14,
              child: Center(
                child: Text(
                  "셔틀 시간표",
                  style: TextStyle(
                      fontFamily: "GodoM",
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 30.0,
                      color: twilight_blue),
                ),
              )),
          Container(
            child: SizedBox(
              child: Bubble(
                  shadowColor: Colors.black,
                  elevation: 3,
                  child: FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.zero,
                    child: Text(
                      '창의인재원 > 한대앞역',
                      style: TextStyle(
                          fontFamily: "GodoM",
                          fontWeight: fontWeight2,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Shuttle_1()));
                    },
                  )),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Row(
                    children: [
                      Text(
                        '남은시간    ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.5,
                            fontWeight: fontWeight2,
                            fontFamily: "GothicA1",
                            fontStyle: FontStyle.normal,
                            fontSize: 17),
                      ),
                      shuttle1()
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ],
              )),
          Container(
            child: SizedBox(
              width: (MediaQuery.of(context).size.width),
              child: Bubble(
                  shadowColor: Colors.black,
                  elevation: 3,
                  child: FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.zero,
                    child: Text(
                      '창의인재원 > 예술인APT',
                      style: TextStyle(
                          fontFamily: "GodoM",
                          fontWeight: fontWeight2,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Shuttle_2()));
                    },
                  )),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Row(
                    children: [
                      Text(
                        '남은시간    ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.5,
                            fontWeight: fontWeight2,
                            fontFamily: "GothicA1",
                            fontStyle: FontStyle.normal,
                            fontSize: 17),
                      ),
                      shuttle2()
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ],
              )),
          Container(
            child: SizedBox(
              width: (MediaQuery.of(context).size.width),
              child: Bubble(
                  shadowColor: Colors.black,
                  elevation: 3,
                  child: FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.zero,
                    child: Text(
                      '셔틀콕 > 한대앞역',
                      style: TextStyle(
                          fontFamily: "GodoM",
                          fontWeight: fontWeight2,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Shuttle_3()));
                    },
                  )),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Row(
                    children: [
                      Text(
                        '남은시간    ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.5,
                            fontWeight: fontWeight2,
                            fontFamily: "GothicA1",
                            fontStyle: FontStyle.normal,
                            fontSize: 17),
                      ),
                      shuttle3()
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ],
              )),
          Container(
            child: SizedBox(
              width: (MediaQuery.of(context).size.width),
              child: Bubble(
                  shadowColor: Colors.black,
                  elevation: 3,
                  child: FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.zero,
                    child: Text(
                      '셔틀콕 > 예술인APT',
                      style: TextStyle(
                          fontFamily: "GodoM",
                          fontWeight: fontWeight2,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Shuttle_4()));
                    },
                  )),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Row(
                    children: [
                      Text(
                        '남은시간    ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.5,
                            fontWeight: fontWeight2,
                            fontFamily: "GothicA1",
                            fontStyle: FontStyle.normal,
                            fontSize: 17),
                      ),
                      shuttle4()
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ],
              )),
          Container(
            child: SizedBox(
              width: (MediaQuery.of(context).size.width),
              child: Bubble(
                  shadowColor: Colors.black,
                  elevation: 3,
                  child: FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.zero,
                    child: Text(
                      '한대앞역 > ',
                      style: TextStyle(
                          fontFamily: "GodoM",
                          fontWeight: fontWeight2,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Shuttle_5()));
                    },
                  )),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Row(
                    children: [
                      Text(
                        '남은시간    ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.5,
                            fontWeight: fontWeight2,
                            fontFamily: "GothicA1",
                            fontStyle: FontStyle.normal,
                            fontSize: 17),
                      ),
                      shuttle5()
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ],
              )),
          Container(
            child: SizedBox(
              width: (MediaQuery.of(context).size.width),
              child: Bubble(
                  shadowColor: Colors.black,
                  elevation: 3,
                  child: FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.zero,
                      child: Text(
                        '예술인 APT >',
                        style: TextStyle(
                            fontFamily: "GodoM",
                            fontWeight: fontWeight2,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Shuttle_6()));
                      })),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  //divider의 패딩부분
                  Row(
                    children: [
                      Text(
                        '남은시간    ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.5,
                            fontWeight: fontWeight2,
                            fontFamily: "GothicA1",
                            fontStyle: FontStyle.normal,
                            fontSize: 17),
                      ),
                      shuttle6()
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ],
              )),
        ],
      ),
    ));
  }
}
