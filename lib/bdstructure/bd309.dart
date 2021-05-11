import 'package:flutter/material.dart';

class Bd309_B1st extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('약학관 지하 1층 구조도'),
        centerTitle: true,
        toolbarHeight: 70,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft, //컬러 시작점
                  end: Alignment.topRight,
                  colors: <Color>[
                    //입맛대로 Colors.색상 해도 상관없음
                    Color(0xFF3366FF),
                    Colors.blueAccent
                  ]
              )
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset('images/309imgb1st.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/309descb1st.png'),
              )],
            )),
      ),
    );
  }
}

class Bd309_1st extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('약학관 1층 구조도'),
        centerTitle: true,
        toolbarHeight: 70,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft, //컬러 시작점
                  end: Alignment.topRight,
                  colors: <Color>[
                    //입맛대로 Colors.색상 해도 상관없음
                    Color(0xFF3366FF),
                    Colors.blueAccent
                  ]
              )
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset('images/309img1st.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/309desc1st.png'),
              )],
            )),
      ),
    );
  }
}

class Bd309_2nd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('약학관 2층 구조도'),
        centerTitle: true,
        toolbarHeight: 70,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft, //컬러 시작점
                  end: Alignment.topRight,
                  colors: <Color>[
                    //입맛대로 Colors.색상 해도 상관없음
                    Color(0xFF3366FF),
                    Colors.blueAccent
                  ]
              )
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset('images/309img2nd.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/309desc2nd.png'),
              )],
            )),
      ),
    );
  }
}

class Bd309_3rd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('약학관 3층 구조도'),
        centerTitle: true,
        toolbarHeight: 70,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft, //컬러 시작점
                  end: Alignment.topRight,
                  colors: <Color>[
                    //입맛대로 Colors.색상 해도 상관없음
                    Color(0xFF3366FF),
                    Colors.blueAccent
                  ]
              )
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset('images/309img3rd.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/309desc3rd.png'),
              )],
            )),
      ),
    );
  }
}

class Bd309_4th extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('약학관 4층 구조도'),
        centerTitle: true,
        toolbarHeight: 70,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft, //컬러 시작점
                  end: Alignment.topRight,
                  colors: <Color>[
                    //입맛대로 Colors.색상 해도 상관없음
                    Color(0xFF3366FF),
                    Colors.blueAccent
                  ]
              )
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset('images/309img4th.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/309desc4th.png'),
              )],
            )),
      ),
    );
  }
}