import 'package:flutter/material.dart';
class Bd202_1st extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('국제문화관 1층 구조도'),
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
                child: Image.asset('images/202img1st.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/202desc1st.png'),
              )],
            )),
      ),
    );
  }
}

class Bd202_2nd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('국제문화관 2층 구조도'),
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
                child: Image.asset('images/202img2nd.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/202desc2nd.png'),
              )],
            )),
      ),
    );
  }
}

class Bd202_3rd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('국제문화관 3층 구조도'),
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
                child: Image.asset('images/202img3rd.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/202desc3rd.png'),
              )],
            )),
      ),
    );
  }
}

class Bd202_4th extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('국제문화관 4층 구조도'),
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
                child: Image.asset('images/202img4th.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/202desc4th.png'),
              )],
            )),
      ),
    );
  }
}

class Bd202_5th extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('국제문화관 5층 구조도'),
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
                child: Image.asset('images/202img5th.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/202desc5th.png'),
              )],
            )),
      ),
    );
  }
}