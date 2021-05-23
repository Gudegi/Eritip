import 'package:eritip/settingSub.dart';
import 'package:flutter/material.dart';


class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
                  '설정',
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
            child: TextButton.icon(
              icon: Icon(Icons.person, color: Colors.black, size: 30),
              label: Text(
                '제작진',
                style: TextStyle(
                    fontFamily: 'GothicA1',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black87),
              ),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => SettingSub()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
