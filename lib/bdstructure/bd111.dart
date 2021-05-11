import 'package:flutter/material.dart';
class Bd111_1st extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('디자인연구관 1층 구조도'),
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
                child: Image.asset('images/111img1st.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/111desc1st.png'),
              )],
            )),
      ),
    );
  }
}

class Bd111_2nd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('디자인연구관 2층 구조도'),
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
                child: Image.asset('images/111img2nd.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/111desc2nd.png'),
              )],
            )),
      ),
    );
  }
}

class Bd111_3rd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('디자인연구관 3층 구조도'),
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
                child: Image.asset('images/111img3rd.png'),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('images/111desc3rd.png'),
              )],
            )),
      ),
    );
  }
}
