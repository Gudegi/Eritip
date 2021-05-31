import 'package:bubble/bubble.dart';
import 'package:eritip/mysql.dart';
import 'package:eritip/settingSub.dart';
import 'package:eritip/settingSub2.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:math';

import 'Indicator.dart';

class Setting extends StatefulWidget {
  Setting({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  static const twilight_blue = const Color(0xff0b4c86);
  int touchedIndex = -1;

  List<PieChartSectionData> showingSections(int infer1, int all1, int incor1) {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final infer = infer1.toDouble();
      final all = all1.toDouble();
      final incor = incor1.toDouble();
      print(
          double.parse(((all - infer - incor) / all).toStringAsFixed(2)) * 100);
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: infer,
            title: '${double.parse((infer / all).toStringAsFixed(2)) * 100}%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: (all - infer - incor),
            title:
                '${double.parse(((all - infer - incor) / all).toStringAsFixed(2)) * 100}%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: incor,
            title: '${double.parse((incor / all).toStringAsFixed(2)) * 100}%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }

  Color greyColor = Colors.grey;

  List<int> selectedSpots = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Mysql().getConnection(),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (!snapshot.hasData)
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [CircularProgressIndicator()],
            ));
          if (snapshot.data.length == 0)
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("데이터가 없습니다."),
                SizedBox(
                  height: 10.0,
                ),
                Text("대화를 해주세요.")
              ],
            ));
          return Container(
            child: StaggeredGridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 5.0,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: (MediaQuery.of(context).size.height) * 0.14,
                    child: ListTile(
                      title: Center(
                        child: Text(
                          '사용 통계',
                          style: TextStyle(
                              fontFamily: "GodoM",
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: twilight_blue,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Bubble(
                    shadowColor: Colors.black,
                    elevation: 3,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            '일별 질문량',
                            style: TextStyle(fontFamily: 'GodoM'),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 2),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: (MediaQuery.of(context).size.width) * 0.9,
                          height: (MediaQuery.of(context).size.height) * 0.30,
                          child: BarChart(
                            BarChartData(
                              alignment: BarChartAlignment.spaceAround,
                              maxY: 1000,
                              barTouchData: BarTouchData(
                                enabled: false,
                                touchTooltipData: BarTouchTooltipData(
                                  tooltipBgColor: Colors.transparent,
                                  tooltipPadding: const EdgeInsets.all(0),
                                  getTooltipItem: (
                                    BarChartGroupData group,
                                    int groupIndex,
                                    BarChartRodData rod,
                                    int rodIndex,
                                  ) {
                                    return BarTooltipItem(
                                      rod.y.round().toString(),
                                      TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    );
                                  },
                                ),
                              ),
                              titlesData: FlTitlesData(
                                show: true,
                                bottomTitles: SideTitles(
                                    showTitles: true,
                                    getTextStyles: (value) => const TextStyle(
                                          color: Color(0xff7589a2),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                    margin: 20,
                                    getTitles: (double value) {
                                      switch (value.toInt()) {
                                        case 0:
                                          return snapshot.data[0][0]['date']
                                              .substring(
                                            5,
                                          );
                                        case 1:
                                          return snapshot.data[0][1]['date']
                                              .substring(
                                            5,
                                          );
                                        case 2:
                                          return snapshot.data[0][2]['date']
                                              .substring(
                                            5,
                                          );
                                        case 3:
                                          return snapshot.data[0][3]['date']
                                              .substring(
                                            5,
                                          );
                                        case 4:
                                          return snapshot.data[0][4]['date']
                                              .substring(
                                            5,
                                          );
                                        case 5:
                                          return snapshot.data[0][5]['date']
                                              .substring(
                                            5,
                                          );
                                        case 6:
                                          return snapshot.data[0][6]['date']
                                              .substring(
                                            5,
                                          );
                                        default:
                                          return '';
                                      }
                                    }),
                                leftTitles: SideTitles(showTitles: false),
                              ),
                              borderData: FlBorderData(show: false),
                              barGroups: [
                                BarChartGroupData(
                                  showingTooltipIndicators: [0],
                                  x: 0,
                                  barRods: [
                                    BarChartRodData(
                                        y: snapshot.data[0][0]['COUNT(date)']
                                            .toDouble(),
                                        width: 10,
                                        colors: [
                                          Colors.lightBlueAccent,
                                          Colors.greenAccent
                                        ],
                                        borderRadius: BorderRadius.circular(4))
                                  ],
                                ),
                                BarChartGroupData(
                                  showingTooltipIndicators: [0],
                                  x: 1,
                                  barRods: [
                                    BarChartRodData(
                                        y: snapshot.data[0][1]['COUNT(date)']
                                            .toDouble(),
                                        width: 10,
                                        colors: [
                                          Colors.lightBlueAccent,
                                          Colors.greenAccent
                                        ],
                                        borderRadius: BorderRadius.circular(4))
                                  ],
                                ),
                                BarChartGroupData(
                                  showingTooltipIndicators: [0],
                                  x: 2,
                                  barRods: [
                                    BarChartRodData(
                                        y: snapshot.data[0][2]['COUNT(date)']
                                            .toDouble(),
                                        width: 10,
                                        colors: [
                                          Colors.lightBlueAccent,
                                          Colors.greenAccent
                                        ],
                                        borderRadius: BorderRadius.circular(4))
                                  ],
                                ),
                                BarChartGroupData(
                                  showingTooltipIndicators: [0],
                                  x: 3,
                                  barRods: [
                                    BarChartRodData(
                                        y: snapshot.data[0][3]['COUNT(date)']
                                            .toDouble(),
                                        width: 10,
                                        colors: [
                                          Colors.lightBlueAccent,
                                          Colors.greenAccent
                                        ],
                                        borderRadius: BorderRadius.circular(4))
                                  ],
                                ),
                                BarChartGroupData(
                                  showingTooltipIndicators: [0],
                                  x: 4,
                                  barRods: [
                                    BarChartRodData(
                                        y: snapshot.data[0][4]['COUNT(date)']
                                            .toDouble(),
                                        width: 10,
                                        colors: [
                                          Colors.lightBlueAccent,
                                          Colors.greenAccent
                                        ],
                                        borderRadius: BorderRadius.circular(4))
                                  ],
                                ),
                                BarChartGroupData(
                                  showingTooltipIndicators: [0],
                                  x: 5,
                                  barRods: [
                                    BarChartRodData(
                                        y: snapshot.data[0][5]['COUNT(date)']
                                            .toDouble(),
                                        width: 10,
                                        colors: [
                                          Colors.lightBlueAccent,
                                          Colors.greenAccent
                                        ],
                                        borderRadius: BorderRadius.circular(4))
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                  child: Bubble(
                    shadowColor: Colors.black,
                    elevation: 3,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            '많이 한 질문',
                            style: TextStyle(fontFamily: 'GodoM'),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Container(
                              width: (MediaQuery.of(context).size.width) * 0.9,
                              height:
                                  (MediaQuery.of(context).size.height) * 0.30,
                              child: Card(
                                child: ScatterChart(
                                  ScatterChartData(
                                    scatterSpots: [
                                      ScatterSpot(
                                        (snapshot.data[1][0]['COUNT(client)'] >
                                                50.0)
                                            ? 80
                                            : 50,
                                        70,
                                        color: selectedSpots.contains(0)
                                            ? Colors.green
                                            : Colors.blueGrey,
                                        radius: 25,
                                      ),
                                      ScatterSpot(
                                        (snapshot.data[1][1]['COUNT(client)'] >
                                                50.0)
                                            ? 61
                                            : 61,
                                        50,
                                        color: selectedSpots.contains(1)
                                            ? Colors.yellow
                                            : Colors.blueGrey,
                                        radius: 20,
                                      ),
                                      ScatterSpot(
                                        (snapshot.data[1][2]['COUNT(client)'] >
                                                50.0)
                                            ? 32
                                            : 22,
                                        71,
                                        color: selectedSpots.contains(2)
                                            ? Colors.purpleAccent
                                            : Colors.blueGrey,
                                        radius: 18,
                                      ),
                                      ScatterSpot(
                                        (snapshot.data[1][3]['COUNT(client)'] >
                                                50.0)
                                            ? 43
                                            : 43,
                                        52,
                                        color: selectedSpots.contains(3)
                                            ? Colors.orange
                                            : Colors.blueGrey,
                                        radius: 16,
                                      ),
                                      ScatterSpot(
                                        (snapshot.data[1][4]['COUNT(client)'] >
                                                50.0)
                                            ? 34
                                            : 14,
                                        15,
                                        color: selectedSpots.contains(4)
                                            ? Colors.brown
                                            : Colors.blueGrey,
                                        radius: 14,
                                      ),
                                      ScatterSpot(
                                        (snapshot.data[1][5]['COUNT(client)'] >
                                                50.0)
                                            ? 65
                                            : 65,
                                        ((snapshot.data[1][5]['COUNT(client)'] /
                                                    1) >
                                                50.0)
                                            ? (snapshot.data[1][5]
                                                    ['COUNT(client)'] /
                                                2)
                                            : (snapshot.data[1][5]
                                                        ['COUNT(client)'] /
                                                    1) *
                                                2,
                                        color: selectedSpots.contains(5)
                                            ? Colors.lightGreenAccent
                                            : Colors.blueGrey,
                                        radius: 12,
                                      ),
                                      ScatterSpot(
                                          (snapshot.data[1][6]
                                                      ['COUNT(client)'] >
                                                  50.0)
                                              ? 16
                                              : 46,
                                          13,
                                          color: selectedSpots.contains(6)
                                              ? Colors.red
                                              : Colors.blueGrey,
                                          radius: 10),
                                      ScatterSpot(
                                        (snapshot.data[1][7]['COUNT(client)'] >
                                                50.0)
                                            ? 7
                                            : 87,
                                        16,
                                        color: selectedSpots.contains(7)
                                            ? Colors.tealAccent
                                            : Colors.blueGrey,
                                        radius: 8,
                                      ),
                                    ],
                                    minX: 0,
                                    maxX: 100,
                                    minY: 0,
                                    maxY: 100,
                                    borderData: FlBorderData(
                                      show: false,
                                    ),
                                    gridData: FlGridData(
                                      show: true,
                                      drawHorizontalLine: true,
                                      checkToShowHorizontalLine: (value) =>
                                          true,
                                      getDrawingHorizontalLine: (value) =>
                                          FlLine(
                                              color: Colors.black
                                                  .withOpacity(0.1)),
                                      drawVerticalLine: true,
                                      checkToShowVerticalLine: (value) => true,
                                      getDrawingVerticalLine: (value) => FlLine(
                                          color: Colors.black.withOpacity(0.1)),
                                    ),
                                    titlesData: FlTitlesData(
                                      show: false,
                                    ),
                                    showingTooltipIndicators: selectedSpots,
                                    scatterTouchData: ScatterTouchData(
                                      enabled: true,
                                      handleBuiltInTouches: false,
                                      touchTooltipData: ScatterTouchTooltipData(
                                        tooltipBgColor: twilight_blue,
                                        getTooltipItems:
                                            (ScatterSpot touchedBarSpot) {
                                          return ScatterTooltipItem(
                                            '${snapshot.data[1][touchedBarSpot.x.toInt() % (10)]['client']}\n',
                                            TextStyle(
                                              height: 1.2,
                                              color: Colors.white,
                                              fontFamily: 'GodoM',
                                            ),
                                            0,
                                            children: [
                                              TextSpan(
                                                text:
                                                    '${snapshot.data[1][touchedBarSpot.x.toInt() % (10)]['COUNT(client)']}회',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'GodoM',
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      touchCallback:
                                          (ScatterTouchResponse touchResponse) {
                                        if (touchResponse.clickHappened &&
                                            touchResponse.touchedSpot != null) {
                                          final sectionIndex = touchResponse
                                              .touchedSpot.spotIndex;
                                          // Tap happened
                                          setState(() {
                                            if (selectedSpots
                                                .contains(sectionIndex)) {
                                              selectedSpots
                                                  .remove(sectionIndex);
                                            } else {
                                              selectedSpots.add(sectionIndex);
                                            }
                                          });
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                  child: Bubble(
                    shadowColor: Colors.black,
                    elevation: 3,
                    child: Container(
                      child: TextButton.icon(
                        icon: Icon(Icons.person, color: Colors.black),
                        label: Text(
                          '제작진',
                          style: TextStyle(
                              fontFamily: 'GothicA1',
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.black87),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingSub()));
                        },
                      ),
                    ),
                  ),
                ),
                Bubble(
                  shadowColor: Colors.black,
                  elevation: 3,
                  child: Container(
                    child: TextButton.icon(
                      icon: Icon(Icons.link, color: Colors.black),
                      label: Text(
                        '소프트웨어융합대학',
                        style: TextStyle(
                            fontFamily: 'GothicA1',
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingSub2()));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Bubble(
                    shadowColor: Colors.black,
                    elevation: 3,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            '정답률',
                            style: TextStyle(fontFamily: 'GodoM'),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 0.8,
                          child: Card(
                            child: Column(
                              children: <Widget>[
                                const SizedBox(
                                  height: 20,
                                ),
                                Expanded(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: PieChart(
                                      PieChartData(
                                          pieTouchData: PieTouchData(
                                              touchCallback:
                                                  (pieTouchResponse) {
                                            setState(() {
                                              final desiredTouch =
                                                  pieTouchResponse.touchInput
                                                          is! PointerExitEvent &&
                                                      pieTouchResponse
                                                              .touchInput
                                                          is! PointerUpEvent;
                                              if (desiredTouch &&
                                                  pieTouchResponse
                                                          .touchedSection !=
                                                      null) {
                                                touchedIndex = pieTouchResponse
                                                    .touchedSection
                                                    .touchedSectionIndex;
                                              } else {
                                                touchedIndex = -1;
                                              }
                                            });
                                          }),
                                          borderData: FlBorderData(
                                            show: false,
                                          ),
                                          sectionsSpace: 0,
                                          centerSpaceRadius: 10,
                                          sections: showingSections(
                                              snapshot.data[2].length,
                                              snapshot.data[3][0]['COUNT(bot)'],
                                              snapshot.data[4].length)),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Indicator(
                                      color: Color(0xff0293ee),
                                      text: '모호(추론)',
                                      isSquare: true,
                                    ),
                                    Indicator(
                                      color: Color(0xfff8b250),
                                      text: '정답',
                                      isSquare: true,
                                    ),
                                    Indicator(
                                      color: Color(0xff845bef),
                                      text: '오답',
                                      isSquare: true,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              staggeredTiles: [
                StaggeredTile.extent(
                  4,
                  (MediaQuery.of(context).size.height) * 0.10,
                ),
                StaggeredTile.extent(
                    4, (MediaQuery.of(context).size.height) * 0.37),
                StaggeredTile.extent(
                    4, (MediaQuery.of(context).size.height) * 0.32),
                StaggeredTile.extent(
                    4, (MediaQuery.of(context).size.height) * 0.07),
              ],
            ),
          );
        },
      ),
    );
  }
}

//원 그래프. 사용 x
/* Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Bubble(
                    shadowColor: Colors.black,
                    elevation: 3,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            '정답률',
                            style: TextStyle(fontFamily: 'GodoM'),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 0.8,
                          child: Card(

                            child: Column(
                              children: <Widget>[
                                const SizedBox(
                                  height: 20,
                                ),
                                Expanded(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: PieChart(
                                      PieChartData(
                                          pieTouchData: PieTouchData(
                                              touchCallback:
                                                  (pieTouchResponse) {
                                            setState(() {
                                              final desiredTouch =
                                                  pieTouchResponse.touchInput
                                                          is! PointerExitEvent &&
                                                      pieTouchResponse
                                                              .touchInput
                                                          is! PointerUpEvent;
                                              if (desiredTouch &&
                                                  pieTouchResponse
                                                          .touchedSection !=
                                                      null) {
                                                touchedIndex = pieTouchResponse
                                                    .touchedSection
                                                    .touchedSectionIndex;
                                              } else {
                                                touchedIndex = -1;
                                              }
                                            });
                                          }),
                                          borderData: FlBorderData(
                                            show: false,
                                          ),
                                          sectionsSpace: 0,
                                          centerSpaceRadius: 10,
                                          sections: showingSections(snapshot.data[2].length, snapshot.data[3][0]['COUNT(bot)'], snapshot.data[4].length )),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Indicator(
                                      color: Color(0xff0293ee),
                                      text: '모호(추론)',
                                      isSquare: true,
                                    ),

                                    Indicator(
                                      color: Color(0xfff8b250),
                                      text: '정답',
                                      isSquare: true,
                                    ),

                                    Indicator(
                                      color: Color(0xff845bef),
                                      text: '오답',
                                      isSquare: true,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),*/
