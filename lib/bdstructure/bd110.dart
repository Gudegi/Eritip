import 'package:flutter/material.dart';
class Bd110_1st extends StatelessWidget {
  static const twilight_blue = const Color(0xff0b4c86);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: twilight_blue),
        title: Text(
          '디자인 교육관 1층 구조도',
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
                  child: Image.asset('images/110img1st.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset('images/110desc1st.png'),
                )
              ],
            )),
      ),
    );
  }
}

class Bd110_2nd extends StatelessWidget {
  static const twilight_blue = const Color(0xff0b4c86);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: twilight_blue),
        title: Text(
          '디자인 교육관 2층 구조도',
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
                  child: Image.asset('images/110img2nd.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset('images/110desc2nd.png'),
                )
              ],
            )),
      ),
    );
  }
}

class Bd110_3rd extends StatelessWidget {
  static const twilight_blue = const Color(0xff0b4c86);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: twilight_blue),
        title: Text(
          '디자인 교육관 3층 구조도',
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
                  child: Image.asset('images/110img3rd.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset('images/110desc3rd.png'),
                )
              ],
            )),
      ),
    );
  }
}

class Bd110_4th extends StatelessWidget {
  static const twilight_blue = const Color(0xff0b4c86);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: twilight_blue),
        title: Text(
          '디자인 교육관 4층 구조도',
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
                  child: Image.asset('images/110img4th.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset('images/110desc4th.png'),
                )
              ],
            )),
      ),
    );
  }
}
