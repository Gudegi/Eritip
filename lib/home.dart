import 'package:flutter/material.dart';
import 'package:flutter_fianl_prj/chatmessage.dart';
import 'package:logger/logger.dart';
import 'dart:convert';
import 'dart:ui';
import 'package:bubble/bubble.dart';
import 'package:flutter/gestures.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:date_format/date_format.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const clear_blue_64 = const Color(0xa31959e6);
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  final GlobalKey<AnimatedListState> _listKey2 = GlobalKey();
  var curTime = formatDate(DateTime.now(), [am, ' ', hh, ':', nn]);
  var timeText = TextStyle(color: Colors.black, fontSize: 10);
  var linkText = TextStyle(color: Colors.blue, fontSize: 12); //링크용 스타일
  var defaultText = TextStyle(color: Colors.black, fontSize: 12); //일반텍스트용 스타
  List<String> _data = [];
  List<String> _data2 = [];
  bool turn = false;

  var BOT_URL = Uri.parse("http://13.124.213.117:5000/chat/");

  void _handleSubmitted(String text) {
    Logger().d(text); //디버깅용 로그 만드는법
    _textEditingController.clear();
    ChatMessage newChat = ChatMessage(text);
    setState(() {
      _chats.insert(0, newChat);
    });
  }

  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _queryController = TextEditingController();
  List<ChatMessage> _chats = [];
  String major = '전공';

  //9-11 1번
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: [
            Container(
              color: clear_blue_64,
              child: Stack(children: <Widget>[
                Image.asset('images/mainhyimg.png'),
                Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: (MediaQuery.of(context).size.height) * 0.124),
                      child: Text("하냥이 봇",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87)),
                    )),
              ]),
            ),
            Expanded(
              child: AnimatedList(
                // key to call remove and insert from anywhere
                reverse: false,
                key: _listKey,
                initialItemCount: _data.length,
                itemBuilder:
                    (BuildContext context, int index, Animation animation) {
                  return _buildItem(_data[index], animation, index);
                },
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white12,
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    FlatButton(
                      minWidth: 20,
                      child: Icon(
                        Icons.menu_rounded,
                        color: Colors.black,
                        size: 25,
                      ),
                      onPressed: () {
                        print('사이드바이용');
                      },
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Hello",
                        ),
                        controller: _queryController,
                        textInputAction: TextInputAction.send,
                        onSubmitted: (msg) {
                          this._getResponse();
                        },
                      ),
                    ),
                    SizedBox(width: 8.0),
                    FlatButton(
                      minWidth: 55,
                      onPressed: () {
                        this._getResponse();
                      },
                      child: Icon(Icons.arrow_right, size: 30),
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  http.Client _getClient() {
    return http.Client();
  }

  void _getResponse() {
    if (_queryController.text.length > 0) {
      this._insertSingleItem(_queryController.text);
      var client = _getClient();
      try {
        client.post(
          BOT_URL,
          body: {"query": _queryController.text},
        )..then(
            (response) {
              try {
                Map<String, dynamic> data = jsonDecode(response.body);
                _insertSingleItem(data['response'] + "<bot>");
              } catch (e) {
                //에러가 나오는 경우 > list타입인 경우(공지, 학식들)
                Map<String, dynamic> data = jsonDecode(response.body);
                List<dynamic> data2 = data['response'];
                for (int i = 0; i < data2.length; i++) {
                  //각 항목들을 구분하기위하여 모든 아이템 뒤에 //추가
                  for (int j = 0; j < data2[i].length; j++) {
                    data2[i][j] = data2[i][j].toString() + "/./";
                  }
                }
                if (data2.length == 6) {
                  for (int i = 0; i < data2.length; i++) {
                    data2[i] = data2[i].toString() + "<bot>1";
                    print(data2[i]);
                  }
                  print(data2.length);
                  _insertMultiItem(data2);
                } else {
                  for (int i = 0; i < data2.length; i++) {
                    data2[i] = data2[i].toString() + "<bot>2";
                    print(data2[i]);
                  }
                  print(data2.length);
                  _insertMultiItem(data2);
                }
              }
            },
          );
      } catch (e) {
        print("Failed -> $e");
      } finally {
        client.close();
        _queryController.clear();
      }
    }
  }

  void _insertSingleItem(String message) {
    _data.add(message);
    print(_data.length);
    print(_data);
    _listKey.currentState.insertItem(_data.length - 1);
  }

  void _insertMultiItem(List message) {
    if (message.length == 6) {
      //대학 공지는 6개  총 길이 6
      for (int i = 0; i < 6; i++) {
        _data.add(message[i].toString());
        _listKey.currentState.insertItem(_data.length - 1);
      }
    }
    if (message.length <= 5) {
      //식당 어디,언제(조식,..),메뉴명,가격, 날짜 + <bot>
      for (int i = 0; i < message.length; i++) {
        _data.add(message[i].toString());
        _listKey.currentState.insertItem(_data.length - 1);
      }
    }
    /*for (int i = 0; i <= 2; i++) {
      _data.add(message[0][3]);
      _listKey.currentState.insertItem(_data.length - 1);
      print(_data.length);
      print(_data);
    }*/
  }

  Widget _buildItem(String item, Animation animation, int index) {
    bool mine = item.endsWith("<bot>"); // <bot>으로 끝나면 봇꺼
    bool notice = item.endsWith("<bot>1"); // 공지용 구분
    bool haksik = item.endsWith("<bot>2"); // 학식용
    return SizeTransition(
      sizeFactor: animation,
      child: Padding(
        padding: notice
            ? EdgeInsets.only(top: 0.1)
            : haksik
                ? EdgeInsets.only(top: 0.1)
                : EdgeInsets.only(top: 10),
        child: notice //공지용
            ? Container(
                decoration: BoxDecoration(
                  color: Color(0xfff4f4f4),
                  border: Border.all(width: 0.4),
                  //borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                //color: Color(0xfff4f4f4),
                margin: EdgeInsets.only(left: 10, right: 10),
                //alignment: notice ? Alignment.topLeft : Alignment.topRight,
                padding: EdgeInsets.all(0.3),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xfff4f4f4),
                        //border: Border(right: BorderSide(width: 1)),
                      ),
                      child: Text(item
                          .replaceAll("<bot>1", "")
                          .split("/./, ")[0]
                          .replaceAll("[", "")),
                      padding: EdgeInsets.only(left: 2, right: 2),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: linkText,
                          text: item.replaceAll("<bot>1", "").split("/./, ")[2],
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              var url = item
                                  .replaceAll("<bot>1", "")
                                  .split("/./, ")[1];
                              _launchWebView(url); //하이퍼링
                            },
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xfff4f4f4),
                        //border: Border(left: BorderSide(width: 1)),
                      ),
                      child: Text(item
                          .replaceAll("<bot>1", "")
                          .split("/./, ")[3]
                          .replaceAll("/./]", "")),
                      padding: EdgeInsets.only(left:2, right: 2),
                    ),
                  ],
                ),
              )
            : haksik //학식용
                ? Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff4f4f4),
                      border: Border.all(width: 0.4),
                    ),
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: EdgeInsets.all(0.3),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xfff4f4f4),
                            //border: Border(right: BorderSide(width: 1)),
                            //borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Text(
                            item
                                .replaceAll("<bot>2", "")
                                .split("/./, ")[1]
                                .replaceAll("[", ""),
                            textAlign: TextAlign.right,
                          ),
                          padding: EdgeInsets.only(right: 2, left: 2),
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: defaultText,
                              text: item
                                  .replaceAll("<bot>2", "")
                                  .split("/./, ")[2],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xfff4f4f4),
                            //border: Border(left: BorderSide(width: 1)),
                          ),
                          child: Text(item
                              .replaceAll("<bot>2", "")
                              .split("/./, ")[3]
                              .replaceAll("]", "")),
                          padding: EdgeInsets.only(left: 2, right: 2),
                        ),
                      ],
                    ),
                  )
                : Container(
                    //alignment: mine ? Alignment.topLeft : Alignment.topRight,
                    child: Wrap(
                      /*mainAxisAlignment: mine
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.end,*/
                      alignment: mine ? WrapAlignment.start : WrapAlignment.end,
                      children: [
                        Bubble(
                          shadowColor: Colors.black,
                          elevation: 4,
                          nipWidth: 7,
                          alignment:
                              mine ? Alignment.topLeft : Alignment.topRight,
                          stick: true,
                          nipOffset: 6,
                          nip: mine ? BubbleNip.leftTop :BubbleNip.rightTop,
                          child: Text(item.replaceAll("<bot>", "")),
                          color: mine ? Color(0xfff4f4f4) : Color(0xff6c95ef),
                          padding: BubbleEdges.all(10),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:10, right:10, top:5, bottom: 3),
                          child: RichText(
                            textAlign: mine ? TextAlign.start : TextAlign.end,
                            text: TextSpan(text: curTime, style: timeText),
                          ),
                        ),
                      ],
                    ),
                  ),
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
