import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingSub extends StatefulWidget {
  @override
  _SettingSubState createState() => _SettingSubState();
}

class _SettingSubState extends State<SettingSub> {
  static const twilight_blue = const Color(0xff0b4c86);

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
            child: Text(
              '팀 ERIA, 강경원, 정소빈, 최지훈',
              style: TextStyle(
                fontFamily: 'GothicA1',
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
