import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_fianl_prj/placedata.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'dart:async';

class MapUniv extends StatefulWidget {

  @override
  _MapUnivState createState() => _MapUnivState();
}

class _MapUnivState extends State<MapUniv> {
  Completer<GoogleMapController> _controller=Completer();
  GlobalKey<FormBuilderState> _fbkey=GlobalKey<FormBuilderState>();
  Set<Marker> _markers={};

  List<String> getSuggestion(String query){
    if(query.isEmpty){
      return [];
    }
    List<String> matches=[];

    final bdName=places.map((place)=>place['name']).toList();

    matches.addAll(bdName);

    matches.retainWhere((s) => s.contains(query));

    return matches;
  }

  String _getsubtitle(buildingName){

    final bdName=places.map((place)=>place['name']).toList();
    final bdNum=places.map((place)=>place['_bdnum']).toList();

    Map<dynamic,dynamic> subtitle={};
    for (int i=0;i<places.length;i++){
      subtitle[bdName[i]]=bdNum[i];
    }

    return '건물번호 : ${subtitle[buildingName]}'.toString();

  }

  void _search() async{
    GoogleMapController controller = await _controller.future;
    _fbkey.currentState.save();
    final inputValue=_fbkey.currentState.value;
    final id=inputValue['buildingName'];
    print(id);

    final foundPlace=places.firstWhere(
            (place) => place['name']==id,
        orElse: ()=>null
    );
    var latAS=foundPlace['latitude'];
    var lngAS=foundPlace['longitude'];


    print('$id,$latAS,$lngAS');
    setState(() {
      _markers.clear();

      controller.animateCamera(CameraUpdate.newLatLng(LatLng(double.parse(latAS),double.parse(lngAS))));

        _markers.add(
          Marker(markerId: MarkerId('102'),
            position: LatLng(double.parse(latAS), double.parse(lngAS)),
            infoWindow: InfoWindow(
              title: id,
              snippet: '자세한 정보를 보시려면 클릭하세요',
              onTap: (){
                showBottomSheet(
                  context: context,
                  builder: (context){
                    return Container(
                      width: 300, height: 300,
                      child: Text('구조도', style: TextStyle(fontSize: 30),)
                    );
                  }
                );
              }
            ),),
        );
    });

  }





  void _onMapCreated(GoogleMapController controller){
    _controller.complete(controller);

  }
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
          onMapCreated: _onMapCreated,
          markers: _markers,
          initialCameraPosition: CameraPosition
          (target: LatLng(37.298002524247934, 126.83443616279172),
        zoom:17,
        ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top:15,
              left: 10
          ),
          child: Row(
            children: [
              SizedBox(
                width: (MediaQuery.of(context).size.width)*0.82,
                height: (MediaQuery.of(context).size.height)*0.07,
                child: FormBuilder(
                  key: _fbkey,
                  child: FormBuilderTypeAhead(
                    attribute: 'buildingName',
                    decoration: InputDecoration(
                        hintText: '건물이름',
                        filled:true,
                        labelText: '건물명을 입력 후 검색버튼을 누르세요.',
                        border: OutlineInputBorder(),
                        fillColor: Colors.white
                    ),
                    itemBuilder: (context,suggestion){

                      return ListTile(
                        title:Text(suggestion),
                        subtitle:Text(_getsubtitle(suggestion)),
                        leading: Icon(Icons.location_on_sharp),
                        shape: RoundedRectangleBorder(),
                        onTap: (){
                        },
                      );
                    },
                    suggestionsCallback: (pattern){
                      return getSuggestion(pattern);
                    },
                  ),
                ),
              ),
              // FlatButton(onPressed: (){}, child: Text('엑스')),
              SizedBox(width: 4,),
              Container(
                width: (MediaQuery.of(context).size.height)*0.07,height: (MediaQuery.of(context).size.height)*0.07,
                child: RaisedButton(
                  child:Icon(Icons.search, color: Colors.white,),
                  onPressed: _search,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0))
                  ),
                  elevation: 8,
                  color: Colors.blue[400],
                ),
              )
            ],
          ),
        )
        ]
      )
    );
  }
}




