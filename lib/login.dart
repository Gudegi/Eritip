import 'package:flutter/material.dart';
import 'package:flutter_fianl_prj/chatapp.dart';
import 'dart:convert';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('로그인api받아와서 구현')),
      body: Column(
        children: [
          Text('json으로 여러가지 받아서 학과는 다음페이지로 보내고 나머지 정보는 저장 rasiedbutton context에 내용넘김'),
          RaisedButton(child: Text('로그인했다치고',
              style:TextStyle(
                  fontFamily: "Gothic",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xFF01579B)
              )),
              onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatApp()));})

        ],
      ),

    );
  }
}
