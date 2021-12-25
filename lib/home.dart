import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'dart:convert';
import 'dart:ui';
import 'package:bubble/bubble.dart';
import 'package:flutter/gestures.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:date_format/date_format.dart';
import 'package:web_browser/web_browser.dart';

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
  var defaultText = TextStyle(color: Colors.black, fontSize: 12); //일반텍스트용 스타일
  ScrollController _scrollController = new ScrollController();
  List<String> _data = [];
  List<String> _data2 = [];
  bool turn = false;

  //http://192.168.174.50:5000/chat/
  var BOT_URL = Uri.parse("http://175.193.216.252:5000/chat/");

  void _handleSubmitted(String text) {
    Logger().d(text); //디버깅용 로그 만드는법
    _textEditingController.clear();
    //ChatMessage newChat = ChatMessage(text);
    //setState(() {
    //_chats.insert(0, newChat);}
    //);
  }

  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _queryController = TextEditingController();

  //List<ChatMessage> _chats = [];
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
                Image.asset('images/mainhyimg2.png'),
                Align(
                  alignment: FractionalOffset.bottomCenter,
                ),
              ]),
            ),
            Expanded(
              child: AnimatedList(
                // key to call remove and insert from anywhere
                reverse: false,
                key: _listKey,
                shrinkWrap: true,
                controller: _scrollController,
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
                        Icons.menu_outlined,
                        color: twilight_blue,
                        size: 25,
                      ),
                      onPressed: () {
                        _showbottomsheet(context);
                      },
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontFamily: 'GodoM'),
                          hintText: "하냥이에게 채팅하기",
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
                      child: Icon(Icons.arrow_right,
                          size: 30, color: twilight_blue),
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

                try {
                  for (int i = 0; i < data2.length; i++) {
                    //각 항목들을 구분하기위하여 모든 아이템 뒤에 //추가
                    for (int j = 0; j < data2[i].length; j++) {
                      data2[i][j] = data2[i][j].toString() + "/./";
                    }
                  }
                } catch (e) {
                  //길이가 1 , 안
                  if (!(data2[0].toString().endsWith("??"))) {
                    data2[0] = data2[0].toString() + "<bot>3";
                    print(data2);
                    _insertMultiItem(data2);
                  }
                }
                if (data2.length == 4) {
                  for (int i = 0; i < data2.length; i++) {
                    data2[i] = data2[i].toString() + "<bot>4";
                    print(data2[i]);
                  }
                  print(data2.length);
                  _insertMultiItem(data2);
                } else if (data2.length == 8) {
                  for (int i = 0; i < data2.length; i++) {
                    data2[i] = data2[i].toString() + "<bot>1";
                    print(data2[i]);
                  }
                  print(data2.length);
                  _insertMultiItem(data2);
                } else if (data2.length > 1 && data2.length < 8) {
                  for (int i = 0; i < data2.length; i++) {
                    //나머지 > 학식
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
    Future.delayed(
      Duration(milliseconds: 500),
      () {
        //1초 동안 마지막 위치로 애니매이션 효과를 주면서 이동
        _scrollController.animateTo(_scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 1),
            curve: Curves.fastOutSlowIn);
      },
    );
  }

  void _insertMultiItem(List message) {
    if (message.length == 4) {
      for (int i = 0; i <= 1; i++) {
        if (i == 0) {
          _data.add(message[i].toString());
          _listKey.currentState.insertItem(_data.length - 1);
        } else if (i == 1) {
          String uniMessage = message[1].toString() +
              message[2].toString() +
              message[3].toString();
          _data.add(uniMessage);
          _listKey.currentState.insertItem(_data.length - 1);
        }
      }
    } else {
      for (int i = 0; i < message.length; i++) {
        _data.add(message[i].toString());
        _listKey.currentState.insertItem(_data.length - 1);
      }
    }
    /* if (message.length <= 5) {
      //식당 어디,언제(조식,..),메뉴명,가격, 날짜 + <bot>
      for (int i = 0; i < message.length; i++) {
        _data.add(message[i].toString());
        _listKey.currentState.insertItem(_data.length - 1);
      }
    }*/
    Future.delayed(
      Duration(milliseconds: 1000),
      () {
        //1 동안 마지막 위치로 애니매이션 효과를 주면서 이동
        _scrollController.animateTo(_scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 1),
            curve: Curves.fastOutSlowIn);
      },
    );
  }

  Widget _buildItem(String item, Animation animation, int index) {
    bool mine = item.endsWith("<bot>"); // <bot>으로 끝나면 봇꺼
    bool notice = item.endsWith("<bot>1"); // 공지용 구분
    bool haksik = item.endsWith("<bot>2"); // 학식용
    bool annae = item.endsWith("<bot>3"); // 안내용
    bool infer = item.endsWith("<bot>4");
    bool checkLen = false;
    return SizeTransition(
      sizeFactor: animation,
      child: Padding(
        padding: notice
            ? EdgeInsets.only(top: 0.1)
            : haksik
                ? EdgeInsets.only(top: 0.1)
                : annae
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
                      padding: EdgeInsets.only(left: 2, right: 2),
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
                : annae
                    ? Container(
                        constraints: BoxConstraints(maxHeight: 450),
                        child: WebBrowser(
                          initialUrl: item.replaceAll("<bot>3", ""),
                          javascriptEnabled: true,
                        ),
                      )
                    : infer
                        ? Container(
                            height: 55,
                            child: item.contains('??')
                                ? Wrap(
                                    alignment: WrapAlignment.start,
                                    children: [
                                      Bubble(
                                        shadowColor: Colors.black,
                                        elevation: 4,
                                        nipWidth: 7,
                                        alignment: Alignment.topLeft,
                                        stick: true,
                                        nipOffset: 6,
                                        nip: BubbleNip.leftTop,
                                        child:
                                            Text(item.replaceAll("<bot>4", "")),
                                        color: Color(0xfff4f4f4),
                                        padding: BubbleEdges.all(10),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 5,
                                            bottom: 3),
                                        child: RichText(
                                          text: TextSpan(
                                              text: curTime, style: timeText),
                                        ),
                                      ),
                                    ],
                                  )
                                : Row(
                                    children: <Widget>[
                                      Bubble(
                                        shadowColor: Colors.black,
                                        elevation: 4,
                                        nipWidth: 7,
                                        alignment: Alignment.topLeft,
                                        stick: true,
                                        nipOffset: 6,
                                        nip: BubbleNip.leftTop,
                                          child: RichText(
                                            text: TextSpan(
                                              style: linkText,
                                              text: item.split("<bot>4")[0].split("/./")[0],
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () async {
                                                  var url = item.split("<bot>4")[0].split("/./")[1];
                                                  _launchWebView(url); //하이퍼링
                                                },
                                            ),
                                          ),
                                        color: Color(0xfff4f4f4),
                                        padding: BubbleEdges.all(10),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                        ),
                                      ),
                                      Bubble(
                                        shadowColor: Colors.black,
                                        elevation: 4,
                                        nipWidth: 7,
                                        alignment: Alignment.topLeft,
                                        stick: true,
                                        nipOffset: 6,
                                          child: RichText(
                                            text: TextSpan(
                                              style: linkText,
                                              text: item.split("<bot>4")[1].split("/./")[0],
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () async {
                                                  var url = item.split("<bot>4")[1].split("/./")[1];
                                                  _launchWebView(url); //하이퍼링
                                                },
                                            ),
                                          ),
                                        color: Color(0xfff4f4f4),
                                        padding: BubbleEdges.all(10),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                        ),
                                      ),
                                      Bubble(
                                        shadowColor: Colors.black,
                                        elevation: 4,
                                        nipWidth: 7,
                                        alignment: Alignment.topLeft,
                                        stick: true,
                                        nipOffset: 6,
                                          child: RichText(
                                            text: TextSpan(
                                              style: linkText,
                                              text: item.split("<bot>4")[2].split("/./")[0],
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () async {
                                                  var url = item.split("<bot>4")[2].split("/./")[1];
                                                  _launchWebView(url); //하이퍼링
                                                },
                                            ),
                                          ),
                                        color: Color(0xfff4f4f4),
                                        padding: BubbleEdges.all(10),
                                      ),
                                    ],
                                  ),
                          )
                        : Container(
                            child: Wrap(
                              /*mainAxisAlignment: mine
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.end,*/
                              alignment: mine
                                  ? WrapAlignment.start
                                  : WrapAlignment.end,
                              children: [
                                Bubble(
                                  shadowColor: Colors.black,
                                  elevation: 4,
                                  nipWidth: 7,
                                  alignment: mine
                                      ? Alignment.topLeft
                                      : Alignment.topRight,
                                  stick: true,
                                  nipOffset: 6,
                                  nip: mine
                                      ? BubbleNip.leftTop
                                      : BubbleNip.rightTop,
                                  child: Text(item.replaceAll("<bot>", "")),
                                  color: mine
                                      ? Color(0xfff4f4f4)
                                      : Color(0xff6c95ef),
                                  padding: BubbleEdges.all(10),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, top: 5, bottom: 3),
                                  child: RichText(
                                    textAlign:
                                        mine ? TextAlign.start : TextAlign.end,
                                    text: TextSpan(
                                        text: curTime, style: timeText),
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

void _showbottomsheet(context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      context: context,
      isScrollControlled: true,
      builder: buildBottomSheet);
}

const twilight_blue = const Color(0xff0b4c86);

Widget buildBottomSheet(BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(
        height: 5,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        TextButton(
          child: Icon(Icons.close_rounded, size: 30),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ]),
      Container(
        child: Text(
          '사용 안내\n',
          style: TextStyle(
            fontFamily: "GodoM",
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: twilight_blue,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      Container(
        child: Text(
          '하냥이에게 무엇이든 물어보세요!\n ',
          style: TextStyle(
            fontFamily: "GothicA1",
            fontWeight: FontWeight.w700,
            fontSize: 17,
            color: Colors.black,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      Container(
        child: Text(
            '1.   "'
            "{단과대학} 공지"
            '" 입력으로 공지사항을 불러옵니다.\n ex) 소융대 공지, 소프트 공지, 디대 공지, 공대 공지\n',
            style: TextStyle(
              fontFamily: "GothicA1",
              fontWeight: FontWeight.w700,
              fontSize: 13,
              color: Colors.black,
              fontStyle: FontStyle.normal,
            ),
            textAlign: TextAlign.center),
      ),
      Container(
        child: Text(
            '2.    "'
            " {교내식당} 메뉴|식단"
            '"  입력으로 금일 메뉴를 불러옵니다.\n ex) 창업보육센터 식단, 창의인재원식당 메뉴, 창보 메뉴\n',
            style: TextStyle(
              fontFamily: "GothicA1",
              fontWeight: FontWeight.w700,
              fontSize: 13,
              color: Colors.black,
              fontStyle: FontStyle.normal,
            ),
            textAlign: TextAlign.center),
      ),
      Container(
        child: Text(
            '3.    "'
            " {*} 안내"
            '"  입력으로 홈페이지 내의 페이지들을 불러옵니다.\n ex) 학사 안내, 복지매장 안내, 장학 안내, 입학처 안내\n ',
            style: TextStyle(
              fontFamily: "GothicA1",
              fontWeight: FontWeight.w700,
              fontSize: 13,
              color: Colors.black,
              fontStyle: FontStyle.normal,
            ),
            textAlign: TextAlign.center),
      ),
      SizedBox(height: 70),
    ],
  );
}
//
