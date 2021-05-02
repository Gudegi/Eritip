import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class MapUniv extends StatefulWidget {

  @override
  _MapUnivState createState() => _MapUnivState();
}

class _MapUnivState extends State<MapUniv> {
  Set<Marker> _markers={};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(markerId: MarkerId('102'),
        position: LatLng(37.298002524247934, 126.83443616279172),
        infoWindow: InfoWindow(title: '학생복지관'),),
      );
      _markers.add(
        Marker(markerId: MarkerId('103'),
        position: LatLng(37.297452076302214, 126.83474874995981),
        infoWindow: InfoWindow(title: '학생회관'))
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [GoogleMap(
          onMapCreated: _onMapCreated,
          markers: _markers,
          initialCameraPosition: CameraPosition
          (target: LatLng(37.29714335086548, 126.83414975118589),
        zoom:15.5,
        ),
        ),
          SearchBar()]
      )
    );
  }
}


class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  FloatingSearchBarController _searchcontroller= FloatingSearchBarController();


  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
      hint: '건물번호나 건물명을 입력하세요',
        controller: _searchcontroller,
        //onSubmitted: _searchOnSubmitted,
        actions: [],

        builder: (context, transition){});
  }
}




