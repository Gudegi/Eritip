import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eritip/food.dart';
import 'package:eritip/home.dart';
import 'package:eritip/map.dart';
import 'package:eritip/setting.dart';
import 'package:eritip/shuttle.dart';




class ChatApp extends StatefulWidget {
  @override
  _ChatAppState createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  List<Widget> _widgetOptions = <Widget>[Home(),MapUniv(),Food(),Shuttle(),Setting()];
  //1번
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:_widgetOptions.elementAt(_selectedIndex),
            //2번
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: '지도',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_outlined),
              label: '학식',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_bus_outlined),
              label: '셔틀',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.brightness_5_outlined),
              label: '설정',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.blueGrey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
        )//bottomnavi,
      ),
    );
  }

}
