import 'package:flutter/material.dart';
class Bd101_1st extends StatelessWidget {
  static const twilight_blue = const Color(0xff0b4c86);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: twilight_blue),
        title: Text('제1공학관 1층 구조도', style: TextStyle(
            fontFamily: "GodoM",
            fontWeight: FontWeight.bold,
            fontSize: 21,
            color: twilight_blue,
            fontStyle: FontStyle.normal),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Image.asset('images/101img1st.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset('images/101desc1st.png'),
                )
              ],
            )),
      ),
    );
  }
}

class Bd101_2nd extends StatelessWidget {
  static const twilight_blue = const Color(0xff0b4c86);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: twilight_blue),
        title: Text('제1공학관 2층 구조도', style: TextStyle(
            fontFamily: "GodoM",
            fontWeight: FontWeight.bold,
            fontSize: 21,
            color: twilight_blue,
            fontStyle: FontStyle.normal),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Image.asset('images/101img2nd.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset('images/101desc2nd.png'),
                )
              ],
            )),
      ),
    );
  }
}

class Bd101_3rd extends StatelessWidget {
  static const twilight_blue = const Color(0xff0b4c86);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: twilight_blue),
        title: Text('제1공학관 3층 구조도', style: TextStyle(
            fontFamily: "GodoM",
            fontWeight: FontWeight.bold,
            fontSize: 21,
            color: twilight_blue,
            fontStyle: FontStyle.normal),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Image.asset('images/101img3rd.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset('images/101desc3rd.png'),
                )
              ],
            )),
      ),
    );
  }
}

class Bd101_4th extends StatelessWidget {static const twilight_blue = const Color(0xff0b4c86);
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: twilight_blue),
      title: Text('제1공학관 4층 구조도', style: TextStyle(
          fontFamily: "GodoM",
          fontWeight: FontWeight.bold,
          fontSize: 21,
          color: twilight_blue,
          fontStyle: FontStyle.normal),),
      centerTitle: true,
      toolbarHeight: 70,
    ),
    body: Container(
      color: Colors.white,
      child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(1),
                child: Image.asset('images/101img4th.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/101desc4th.png'),
              )
            ],
          )),
    ),
  );
  }
}

class Bd101_5th extends StatelessWidget {static const twilight_blue = const Color(0xff0b4c86);
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: twilight_blue),
      title: Text('제1공학관 5층 구조도', style: TextStyle(
          fontFamily: "GodoM",
          fontWeight: FontWeight.bold,
          fontSize: 21,
          color: twilight_blue,
          fontStyle: FontStyle.normal),),
      centerTitle: true,
      toolbarHeight: 70,
    ),
    body: Container(
      color: Colors.white,
      child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(1),
                child: Image.asset('images/101img5th.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/101desc5th.png'),
              )
            ],
          )),
    ),
  );
  }
}