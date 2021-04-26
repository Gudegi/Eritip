import 'package:flutter/material.dart';
import 'package:flutter_fianl_prj/bottomnavi.dart';

class Food extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
                Container(child: Text('교직원식당')),
                Container(child: Text('학생식당')),
                Container(child: Text('창의인재원식당')),
                Container(child: Text('창업보육센터'))
          ])
        ,
    );
  }
}