import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_place/google_place.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  static String routeName = 'routeName';

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(30.4581, 31.176),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(30.4581, 31.176),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  getSearched() async {
    var googlePlace = GooglePlace("AIzaSyAizHMaRTTHJqJ7fHRDzeWVUHxDNqXHml0");

    var result = await googlePlace.search.getNearBySearch(
        Location(lat: 30.4581, lng: 31.176), 1500,
        type: "doctor", keyword: "laboratory");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          getSearched();
        },
        label: Text('Laboratory Way!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  // return ListView.builder(itemBuilder: context,result.results)
}
