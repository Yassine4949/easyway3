import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapApp extends StatefulWidget{
  @override
  _MapAppState createState() => _MapAppState();

}
class _MapAppState extends State<MapApp>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:GoogleMap(
        initialCameraPosition: CameraPosition(target: LatLng(37.42, -122.088),
        ),
      ),
    ) ;
  }
}