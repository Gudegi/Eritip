import 'package:flutter/material.dart';

class Bd402_1st extends StatelessWidget {
  static const twilight_blue = const Color(0xff0b4c86);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: twilight_blue),
        title: Text(
          '체육관 1층 구조도',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "GodoM",
              fontWeight: FontWeight.bold,
              fontSize: 21,
              color: twilight_blue,
              fontStyle: FontStyle.normal),
        ),
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
              child: Image.asset('images/402img1st.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Image.asset('images/402desc1st.png'),
            )
          ],
        )),
      ),
    );
  }
}

class Bd402_2nd extends StatelessWidget {
  static const twilight_blue = const Color(0xff0b4c86);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: twilight_blue),
        title: Text(
          '체육관 2층 구조도',textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "GodoM",
              fontWeight: FontWeight.bold,
              fontSize: 21,
              color: twilight_blue,
              fontStyle: FontStyle.normal),
        ),
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
                  child: Image.asset('images/402img2nd.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset('images/402desc2nd.png'),
                )
              ],
            )),
      ),
    );
  }
}

class Bd402_3rd extends StatelessWidget {
  static const twilight_blue = const Color(0xff0b4c86);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: twilight_blue),
        title: Text(
          '체육관 3층 구조도',textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "GodoM",
              fontWeight: FontWeight.bold,
              fontSize: 21,
              color: twilight_blue,
              fontStyle: FontStyle.normal),
        ),
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
                  child: Image.asset('images/402img3rd.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset('images/402desc3rd.png'),
                )
              ],
            )),
      ),
    );
  }
}
