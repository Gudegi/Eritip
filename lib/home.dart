import 'package:flutter/material.dart';
import 'package:flutter_fianl_prj/chatmessage.dart';
import 'package:logger/logger.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const clear_blue_64 = const Color(0xa31959e6);
  void _handleSubmitted(String text){
    Logger().d(text);//디버깅용 로그 만드는법
    _textEditingController.clear();
    ChatMessage newChat=ChatMessage(text);
    setState(() {
      _chats.insert(0,newChat);
    });
  }
  TextEditingController _textEditingController = TextEditingController();
  List<ChatMessage> _chats=[];
  String major='전공';
  //9-11 1번
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[Container(
          color: clear_blue_64,
          child: Stack(children: <Widget>[
            Image.asset('images/mainhyimg.png'),
            Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(top:100),
                  child: Text(major+" 하냥이",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                )),
          ]),
        )

          ,Expanded(
              child: ListView.builder(
                reverse: true,
                itemBuilder: (context,index){
                  return _chats[index];
                },itemCount: _chats.length, )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                FlatButton(
                  minWidth:20,
                  child:Icon(Icons.menu_rounded),

                  onPressed: (){print("d");},
                ),
                SizedBox(width:8.0)
                ,
                Expanded(
                  child: TextField(//기본값이 없어서 사이즈 지정해줘야함
                      controller: _textEditingController,//채팅창에 쓴내용 저장
                      decoration: InputDecoration(hintText: "메세지 입력창"),
                      cursorColor: Colors.blueAccent,
                      onSubmitted: _handleSubmitted//키보드에서 엔터눌러도 동작가능하게,두개가 구조 같아서 이렇게 사용 가능
                    //둘다 string을 인자로 받고 body도 같으니까 이런식으로 사용가능
                  ),

                ),
                SizedBox(width:8.0),
                FlatButton(
                  minWidth: 55,
                  onPressed: (){
                      _handleSubmitted(_textEditingController.text);
                    },
                  child: Icon(Icons.arrow_right, size:30),
                  color: Colors.blueAccent,
                )//기본값있음
              ],
            ),
          ),
        ],
      ),
      //17-70 2번
    );
  }
}
