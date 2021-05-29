import 'package:flutter/material.dart';

class Bd202_1st extends StatelessWidget {
  static const twilight_blue = const Color(0xff0b4c86);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: twilight_blue),
        title: Text(
          '국제문화관 1층 구조도',
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
              child: Image.asset('images/202img1st.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Image.asset('images/202desc1st.png'),
            )
          ],
        )),
      ),
    );
  }
}

class Bd202_2nd extends StatelessWidget {
  static const twilight_blue = const Color(0xff0b4c86);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: twilight_blue),
        title: Text(
          '국제문화관 2층 구조도',
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
              child: Image.asset('images/202img2nd.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Image.asset('images/202desc2nd.png'),
            )
          ],
        )),
      ),
    );
  }
}

class Bd202_3rd extends StatelessWidget {
  static const twilight_blue = const Color(0xff0b4c86);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: twilight_blue),
        title: Text(
          '국제문화관 3층 구조도',
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
              child: Image.asset('images/202img3rd.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Image.asset('images/202desc3rd.png'),
            )
          ],
        )),
      ),
    );
  }
}

class Bd202_4th extends StatelessWidget {
  static const twilight_blue = const Color(0xff0b4c86);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: twilight_blue),
        title: Text(
          '국제문화관 4층 구조도',
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
                  child: Image.asset('images/202img4th.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset('images/202desc4th.png'),
                )
              ],
            )),
      ),
    );
  }
}

class Bd202_5th extends StatelessWidget {
  static const twilight_blue = const Color(0xff0b4c86);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: twilight_blue),
        title: Text(
          '국제문화관 5층 구조도',
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
                  child: Image.asset('images/202img5th.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset('images/202desc5th.png'),
                )
              ],
            )),
      ),
    );
  }
}
