import 'dart:async';
import 'package:flutter/material.dart';
import 'package:eritip/ready2login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ERITIP',
      //themeMode: ThemeMode.system,
      //theme: MyThemes.lightTheme,
      //darkTheme: MyThemes.darkTheme,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const twilight_blue = const Color(0xff0b4c86);
  static const clear_blue_64 = const Color(0xa31959e6);

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Ready2Login()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: clear_blue_64,
        child: Column(
          children: [
            SizedBox(
              height: (MediaQuery.of(context).size.height) * 0.3,
            ),
            Center(
              child: Text('ERITIP',
                  style: TextStyle(
                      fontFamily: "GothicA1Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 53,
                      color: twilight_blue)),
            ),
            Image.asset(
              'images/splash_hy2.png',
              width: (MediaQuery.of(context).size.height) * 0.4,
              height: (MediaQuery.of(context).size.height) * 0.4,
            ),
          ],
        ),
      ),
    );
  }
}
