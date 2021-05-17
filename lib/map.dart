import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_fianl_prj/placedata.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'dart:async';

import 'package:flutter_fianl_prj/bdstructure/bd101.dart';
import 'package:flutter_fianl_prj/bdstructure/bd102.dart';
import 'package:flutter_fianl_prj/bdstructure/bd103.dart';
import 'package:flutter_fianl_prj/bdstructure/bd104.dart';
import 'package:flutter_fianl_prj/bdstructure/bd105.dart';
import 'package:flutter_fianl_prj/bdstructure/bd201.dart';
import 'package:flutter_fianl_prj/bdstructure/bd202.dart';
import 'package:flutter_fianl_prj/bdstructure/bd110.dart';
import 'package:flutter_fianl_prj/bdstructure/bd109.dart';
import 'package:flutter_fianl_prj/bdstructure/bd111.dart';
import 'package:flutter_fianl_prj/bdstructure/bd403.dart';
import 'package:flutter_fianl_prj/bdstructure/bd309.dart';
import 'package:flutter_fianl_prj/bdstructure/bd204.dart';
import 'package:flutter_fianl_prj/bdstructure/bd205.dart';
import 'package:flutter_fianl_prj/bdstructure/bd207.dart';
import 'package:flutter_fianl_prj/bdstructure/bd402.dart';
import 'package:flutter_fianl_prj/bdstructure/bd311.dart';

class MapUniv extends StatefulWidget {
  @override
  _MapUnivState createState() => _MapUnivState();
}

class _MapUnivState extends State<MapUniv> {
  static const twilight_blue = const Color(0xff0b4c86);
  Completer<GoogleMapController> _controller = Completer();
  GlobalKey<FormBuilderState> _fbkey = GlobalKey<FormBuilderState>();
  Set<Marker> _markers = {}; //검색 후 포인팅 마커



  List<String> getSuggestion(String query) {
    if (query.isEmpty) {
      return [];
    }
    List<String> matches = [];

    final bdName = places.map((place) => place['name']).toList();

    matches.addAll(bdName);

    matches.retainWhere((s) => s.contains(query));

    return matches;
  }

  String _getsubtitle(buildingName) {
    final bdName = places.map((place) => place['name']).toList();
    final bdNum = places.map((place) => place['_bdnum']).toList();

    Map<dynamic, dynamic> subtitle = {};
    for (int i = 0; i < places.length; i++) {
      subtitle[bdName[i]] = bdNum[i];
    }

    return '건물번호 : ${subtitle[buildingName]}'.toString();
  }

  void _search() async {
    try {
      GoogleMapController controller = await _controller.future;
      _fbkey.currentState.save();
      final inputValue = _fbkey.currentState.value;
      final id = inputValue['buildingName'];

      final foundPlace =
          places.firstWhere((place) => place['name'] == id, orElse: () => null);
      var latAS = foundPlace['latitude'];
      var lngAS = foundPlace['longitude'];

      print('$id,$latAS,$lngAS');
      setState(
        () {
          _markers.clear();

          controller.animateCamera(CameraUpdate.newLatLng(
              LatLng(double.parse(latAS), double.parse(lngAS))));

          _markers.add(
            Marker(
              markerId: MarkerId('102'),
              position: LatLng(double.parse(latAS), double.parse(lngAS)),
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
                infoWindow: InfoWindow(
                  title: id,
                  snippet: '자세한 정보를 보시려면 클릭하세요',
                  onTap: _showbottomsheet),
            ),
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }

  void _showbottomsheet() {
    _fbkey.currentState.save();
    final inputValue = _fbkey.currentState.value;
    final bd = inputValue['buildingName'];
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        context: context,
        isScrollControlled: true, //modal창 하나도 안가림
        builder: (context) {
          return SingleChildScrollView(
            //픽셀오버오류
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: Icon(Icons.close_rounded, size: 30),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ]),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            bd,
                            style: TextStyle(
                                fontFamily: "Gothic",
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: twilight_blue,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30),
                        child: Column(
                          children: [
                            if (bd == '제1공학관')
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    ListTile(
                                      title: Text('1층'),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd101_1st()));
                                      },
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.blue,
                                      height: 3, //divider의 패딩부분
                                    ),
                                    ListTile(
                                        title: Text('2층'),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Bd101_2nd()));
                                        }),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.blue,
                                      height: 3, //divider의 패딩부분
                                    ),
                                    ListTile(
                                        title: Text('3층'),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Bd101_3rd()));
                                        }),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.blue,
                                      height: 3, //divider의 패딩부분
                                    ),
                                    ListTile(
                                        title: Text('4층'),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Bd101_4th()));
                                        }),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.blue,
                                      height: 3, //divider의 패딩부분
                                    ),
                                    ListTile(
                                        title: Text('5층'),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Bd101_5th()));
                                        })
                                  ],
                                ),
                              ),
                            if (bd == '제2공학관')
                              Container(
                                  child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      '1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd102_1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '2층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd102_2nd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '3층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd102_3rd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text('4층',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd102_4th()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text('5층',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd102_5th()));
                                      })
                                ],
                              )),
                            if (bd == '제3공학관')
                              Container(
                                  child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      'B1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd103_B1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                    title: Text(
                                      '1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd103_1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '2층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd103_2nd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '3층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd103_3rd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text('4층',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd103_4th()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text('5층',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd103_5th()));
                                      })
                                ],
                              )),
                            if (bd == '제4공학관')
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    ListTile(
                                      title: Text(
                                        'B1층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd104_B1st()));
                                      },
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.blue,
                                      height: 3, //divider의 패딩부분
                                    ),
                                    ListTile(
                                      title: Text(
                                        '1층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd104_1st()));
                                      },
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.blue,
                                      height: 3, //divider의 패딩부분
                                    ),
                                    ListTile(
                                        title: Text(
                                          '2층',
                                          style: TextStyle(fontSize: 17),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Bd104_2nd()));
                                        }),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.blue,
                                      height: 3, //divider의 패딩부분
                                    ),
                                    ListTile(
                                        title: Text(
                                          '3층',
                                          style: TextStyle(fontSize: 17),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Bd104_3rd()));
                                        }),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.blue,
                                      height: 3, //divider의 패딩부분
                                    ),
                                    ListTile(
                                        title: Text('4층',
                                            style: TextStyle(fontSize: 17)),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Bd104_4th()));
                                        }),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.blue,
                                      height: 3, //divider의 패딩부분
                                    ),
                                    ListTile(
                                        title: Text('5층',
                                            style: TextStyle(fontSize: 17)),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Bd104_5th()));
                                        })
                                  ],
                                ),
                              ),
                            if (bd == '제5공학관')
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    ListTile(
                                      title: Text(
                                        'B1층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd105_B1st()));
                                      },
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.blue,
                                      height: 3, //divider의 패딩부분
                                    ),
                                    ListTile(
                                      title: Text(
                                        '1층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd105_1st()));
                                      },
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.blue,
                                      height: 3, //divider의 패딩부분
                                    ),
                                    ListTile(
                                        title: Text(
                                          '2층',
                                          style: TextStyle(fontSize: 17),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Bd105_2nd()));
                                        }),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.blue,
                                      height: 3, //divider의 패딩부분
                                    ),
                                    ListTile(
                                        title: Text(
                                          '3층',
                                          style: TextStyle(fontSize: 17),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Bd105_3rd()));
                                        }),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.blue,
                                      height: 3, //divider의 패딩부분
                                    ),
                                    ListTile(
                                        title: Text('4층',
                                            style: TextStyle(fontSize: 17)),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Bd105_4th()));
                                        }),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.blue,
                                      height: 3, //divider의 패딩부분
                                    ),
                                    ListTile(
                                        title: Text('5층',
                                            style: TextStyle(fontSize: 17)),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Bd105_5th()));
                                        })
                                  ],
                                ),
                              ),
                            if (bd == '경상관')
                              Container(
                                  child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      '1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd201_1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '2층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd201_2nd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '3층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd201_3rd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text('4층',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd201_4th()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text('5층',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd201_5th()));
                                      })
                                ],
                              )),
                            if (bd == '국제문화관')
                              Container(
                                  child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      '1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd202_1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '2층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd202_2nd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '3층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd202_3rd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text('4층',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd202_4th()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text('5층',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd202_5th()));
                                      })
                                ],
                              )),
                            if (bd == '디자인교육관')
                              Container(
                                  child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      '1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd110_1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '2층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd110_2nd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '3층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd110_3rd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text('4층',
                                          style: TextStyle(fontSize: 17)),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd110_4th()));
                                      }),
                                ],
                              )),
                            if (bd == '디자인문화관')
                              Container(
                                  child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      '1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd109_1st()));
                                    },
                                  ),
                                ],
                              )),
                            if (bd == '디자인연구관')
                              Container(
                                  child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      '1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd111_1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '2층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd111_2nd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '3층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd111_3rd()));
                                      }),
                                ],
                              )),
                            if (bd == '실용음악관(Muse Hall/뮤즈홀)')
                              Container(
                                  child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      '1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd403_1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '2층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd403_2nd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '3층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd403_3rd()));
                                      }),
                                ],
                              )),
                            if (bd == '약학관')
                              Container(
                                  child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      'B1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd309_B1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                    title: Text(
                                      '1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd309_1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '2층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd309_2nd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '3층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd309_3rd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                    title: Text(
                                      '4층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd309_4th()));
                                    },
                                  ),
                                ],
                              )),
                            if (bd == '언론정보관')
                              Container(
                                  child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      'B1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd204_B1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                    title: Text(
                                      '1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd204_1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '2층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd204_2nd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '3층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd204_3rd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                    title: Text(
                                      '4층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd204_4th()));
                                    },
                                  ),
                                ],
                              )),
                            if (bd == '제1과학기술관(입학처 입학팀)')
                              Container(
                                  child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      'B1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd205_B1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                    title: Text(
                                      '1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd205_1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '2층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd205_2nd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '3층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd205_3rd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                    title: Text(
                                      '4층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd205_4th()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                    title: Text(
                                      '5층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd205_5th()));
                                    },
                                  ),
                                ],
                              )),
                            if (bd == '제2과학기술관')
                              Container(
                                  child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      '1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd207_1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '2층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd207_2nd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '3층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd207_3rd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                    title: Text(
                                      '4층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd207_4th()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                    title: Text(
                                      '5층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd207_5th()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                    title: Text(
                                      '6층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd207_6th()));
                                    },
                                  )
                                ],
                              )),
                            if (bd == '체육관')
                              Container(
                                  child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      '1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd402_1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '2층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd402_2nd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '3층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd402_3rd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                ],
                              )),
                            if (bd == '학연산클러스터지원센터')
                              Container(
                                  child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      'B1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd311_B1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                    title: Text(
                                      '1층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd311_1st()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '2층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd311_2nd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                      title: Text(
                                        '3층',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bd311_3rd()));
                                      }),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                    title: Text(
                                      '4층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd311_4th()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                    title: Text(
                                      '5층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd311_5th()));
                                    },
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.blue,
                                    height: 3, //divider의 패딩부분
                                  ),
                                  ListTile(
                                    title: Text(
                                      '6층',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Bd311_6th()));
                                    },
                                  )
                                ],
                              )),
                            if (bd != '제1공학관' &&
                                bd != '제2공학관' &&
                                bd != '제3공학관' &&
                                bd != '제4공학관' &&
                                bd != '제5공학관' &&
                                bd != '경상관' &&
                                bd != '국제문화관' &&
                                bd != '디자인교육관' &&
                                bd != '디자인문화관' &&
                                bd != '디자인연구관' &&
                                bd != '실용음악관(Muse Hall/뮤즈홀)' &&
                                bd != '약학관' &&
                                bd != '언론정보관' &&
                                bd != '제1과학기술관(입학처 입학팀)' &&
                                bd != '제2과학기술관' &&
                                bd != '체육관' &&
                                bd != '학연산클러스터지원센터')
                              Text('아직 지원하지 않습니다.')
                          ],
                        ))
                  ],
                ),
                //폼빌더는 키가 있어함 fbkey이용
                SizedBox(
                  height: 20,
                ), //
              ],
            ),
          );
        });
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: CameraPosition(
          target: LatLng(37.298002524247934, 126.83443616279172),
          zoom: 17,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15, left: 10),
        child: Row(
          children: <Widget> [
            SizedBox(
              width: (MediaQuery.of(context).size.width) * 0.82,
              height: (MediaQuery.of(context).size.height) * 0.07,
              child: FormBuilder(
                key: _fbkey,
                child: FormBuilderTypeAhead(
                  attribute: 'buildingName',
                  decoration: InputDecoration(
                    //hintText: '건물이름',
                    filled: true,
                    labelText: '건물명 입력 후 검색버튼을 눌러주세요.',
                    border: OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    fillColor: Colors.white,
                  ),
                  itemBuilder: (context, suggestion) {
                    return ListTile(
                      title: Text(suggestion),
                      subtitle: Text(_getsubtitle(suggestion)),
                      leading: Icon(Icons.location_on_sharp),
                      shape: RoundedRectangleBorder(),
                    );
                  },
                  suggestionsCallback: (pattern) {
                    return getSuggestion(pattern);
                  },
                ),
              ),
            ),
            // FlatButton(onPressed: (){}, child: Text('엑스')),
            SizedBox(
              width: 4,
            ),
            Container(
              width: (MediaQuery.of(context).size.height) * 0.07,
              height: (MediaQuery.of(context).size.height) * 0.07,
              child: RaisedButton(
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: _search,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                elevation: 8,
                color: Color(0xff6c95ef),
              ),
            ),

          ],
        ),
      )
    ]));
  }
}
