import 'package:flutter/material.dart';

class Bd105_B1st extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제5공학관 지하 1층 구조도'),
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
                child: Image.asset('images/105imgb1st.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/105descb1st.png'),
              )],
            )),
      ),
    );
  }
}

class Bd105_1st extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제5공학관 1층 구조도'),
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
                child: Image.asset('images/105img1st.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/105desc1st.png'),
              )],
            )),
      ),
    );
  }
}

class Bd105_2nd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제5공학관 2층 구조도'),
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
                child: Image.asset('images/105img2nd.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/105desc2nd.png'),
              )],
            )),
      ),
    );
  }
}

class Bd105_3rd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제5공학관 3층 구조도'),
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
                child: Image.asset('images/105img3rd.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/105desc3rd.png'),
              )],
            )),
      ),
    );
  }
}

class Bd105_4th extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제5공학관 4층 구조도'),
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
                child: Image.asset('images/105img4th.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/105desc4th.png'),
              )],
            )),
      ),
    );
  }
}

class Bd105_5th extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제5공학관 5층 구조도'),
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
                child: Image.asset('images/105img5th.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/105desc5th.png'),
              )],
            )),
      ),
    );
  }
}