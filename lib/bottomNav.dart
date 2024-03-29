import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eritip/food.dart';
import 'package:eritip/home.dart';
import 'package:eritip/map.dart';
import 'package:eritip/setting.dart';
import 'package:eritip/shuttle.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  static const twilight_blue = const Color(0xff0b4c86);
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    MapUniv(),
    Food(),
    Shuttle(),
    Setting()
  ];

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
        body: _widgetOptions.elementAt(_selectedIndex),
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
              icon: Icon(Icons.bar_chart_rounded),
              label: '통계',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: twilight_blue,
          selectedLabelStyle: TextStyle(fontFamily: 'GodoM'),
          unselectedLabelStyle: TextStyle(fontFamily: 'GodoM'),
          unselectedItemColor: Colors.blueGrey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
        ), //bottomnavi,
      ),
    );
  }
}
