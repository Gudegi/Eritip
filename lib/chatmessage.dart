import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:date_format/date_format.dart';

class ChatMessage extends StatelessWidget {

  final String txt;
  const ChatMessage(this.txt,{Key key, }) : super(key: key);
  static const clear_blue_64 = const Color(0xa31959e6);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Text(formatDate(DateTime.now(), [am,' ',hh, ':', nn])
        ,textAlign: TextAlign.center,),
          SizedBox(width: 5.0,),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: clear_blue_64,),
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(txt, style: TextStyle(fontSize: 20),),),
          ),
        ],),
    );
  }
}
