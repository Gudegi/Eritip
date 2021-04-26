import 'package:flutter/material.dart';
import 'package:flutter_fianl_prj/chatapp.dart';
import 'package:flutter_fianl_prj/food.dart';
import 'package:flutter_fianl_prj/map.dart';
import 'package:flutter_fianl_prj/mypage.dart';
import 'package:flutter_fianl_prj/shuttle.dart';

class BottomNavi extends StatefulWidget {
  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex==0) {
        print('홈');
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatApp()));
      }
      if (_selectedIndex==1) {
        print('지도');
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MapUniv()));
      }
      if (_selectedIndex==2) {
        print('학식');
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Food()));

      }
      if (_selectedIndex==3) {
        print('셔틀');
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Shuttle()));
      }
      if (_selectedIndex==4) {
        print('내정보');
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Mypage()));
      }
    });

  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
          icon: Icon(Icons.person_outline),
          label: '내정보',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.blueGrey,
      showUnselectedLabels: true,
      onTap: _onItemTapped,
    );
  }
}

