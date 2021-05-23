import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SettingSub extends StatefulWidget {
  @override
  _SettingSubState createState() => _SettingSubState();
}

class _SettingSubState extends State<SettingSub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
          Container(child: Text('강경원,정소빈,최지훈')),
        ],)
    );
  }
}
