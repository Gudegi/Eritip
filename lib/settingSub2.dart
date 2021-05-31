import 'package:bubble/bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_browser/web_browser.dart';

class SettingSub2 extends StatefulWidget {
  @override
  _SettingSub2State createState() => _SettingSub2State();
}

class _SettingSub2State extends State<SettingSub2> {
  static const twilight_blue = const Color(0xff0b4c86);
  String url = 'http://computing.hanyang.ac.kr/';
  var linkText = TextStyle(
      color: Colors.blue,
      fontSize: 17,
      fontFamily: 'GothicA1',
      fontWeight: FontWeight.w600); //링크용 스타일

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
                  '소프트웨어융합대학',
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
            constraints: BoxConstraints(maxHeight: (MediaQuery.of(context).size.height) * 0.8,),
            child: WebBrowser(
              initialUrl: url,
              javascriptEnabled: true,
            ),
          )],
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
