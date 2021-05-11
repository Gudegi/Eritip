import 'package:flutter/material.dart';

class Bd205_B1st extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제1과학기술관 지하 1층 구조도'),
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
                child: Image.asset('images/205imgb1st.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/205descb1st.png'),
              )],
            )),
      ),
    );
  }
}

class Bd205_1st extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제1과학기술관 1층 구조도'),
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
                child: Image.asset('images/205img1st.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/205desc1st.png'),
              )],
            )),
      ),
    );
  }
}

class Bd205_2nd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제1과학기술관 2층 구조도'),
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
                child: Image.asset('images/205img2nd.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/205desc2nd.png'),
              )],
            )),
      ),
    );
  }
}

class Bd205_3rd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제1과학기술관 3층 구조도'),
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
                child: Image.asset('images/205img3rd.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/205desc3rd.png'),
              )],
            )),
      ),
    );
  }
}

class Bd205_4th extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제1과학기술관 4층 구조도'),
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
                child: Image.asset('images/205img4th.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/205desc4th.png'),
              )],
            )),
      ),
    );
  }
}

class Bd205_5th extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제1과학기술관 5층 구조도'),
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
                child: Image.asset('images/205img5th.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/205desc5th.png'),
              )],
            )),
      ),
    );
  }
}