import 'package:bubble/bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingSub extends StatefulWidget {
  @override
  _SettingSubState createState() => _SettingSubState();
}

class _SettingSubState extends State<SettingSub> {
  static const twilight_blue = const Color(0xff0b4c86);
  var linkText = TextStyle(color: Colors.blue, fontSize: 17, fontFamily: 'GothicA1', fontWeight: FontWeight.w600); //링크용 스타일

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
                  '제작진',
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
            height: (MediaQuery.of(context).size.height) * 0.25,
            alignment: Alignment.center,
            child: Bubble(
              child: Text(
                'Tean ERIA \n\n 강경원,  정소빈,  최지훈 ',
                style: TextStyle(
                  fontFamily: 'GothicA1',
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                    color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child:
          Container(
            height: (MediaQuery.of(context).size.height) * 0.12,
            alignment: Alignment.center,
            child: Bubble(
              shadowColor: Colors.black,
              elevation: 4,
              nipWidth: 7,
              stick: true,
              nipOffset: 6,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '제작지원 \n 구조도 자료제공, 한양대 에리카 공식 블로그',
                  style: linkText,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      var url = 'https://blog.naver.com/hyerica4473';
                      _launchWebView(url); //하이퍼링
                    },
                ),
              ),
              padding: BubbleEdges.all(10),
            ),
          ),),
        ],
      ),
    );
  }
}

Future<void> _launchWebView(String url) async {
  if (await canLaunch(url)) {
    await launch(url,
        forceSafariVC: true,
        forceWebView: true,
        headers: <String, String>{'my_header_key': 'my_header_value'});
  } else {
    throw 'Could not launch $url';
  }
}
