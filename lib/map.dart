import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BrozoMap extends StatefulWidget {
  const BrozoMap({super.key});

  @override
  State<BrozoMap> createState() => _BrozoMapState();
}

class _BrozoMapState extends State<BrozoMap> {
  Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kLake = CameraPosition(
    // bearing: 192.8334901395799,
    target: LatLng(28.209620, 83.985523),
    // tilt: 59.440717697143555,
    zoom: 14,
  );

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _marker.addAll(_list);
  // }

  dynamic finalvalue = "";

  List<Marker> markers = [];
  List<Marker> _list = const [
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(28.209620, 83.985523),
        infoWindow: InfoWindow(title: "My position")),
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(28.209628, 83.985529),
        infoWindow: InfoWindow(title: "My position"))
  ];

  int id = 1;
  Set<Polyline> _polylines = Set<Polyline>();
  List<LatLng> polylineCoordinates = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: GoogleMap(
            onTap: (LatLng latlang) {
              // print('or lat and long is: $latlang');
              var valuess = latlang;

              print(valuess);
             
            },

            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers: markers.map((e) => e).toSet(),
            polylines: _polylines,

            initialCameraPosition: _kLake,
            // markers: Set<Marker>.of(markers),
            mapType: MapType.normal,
            myLocationButtonEnabled: true,
          ),
        ),
        Center(
          child: Icon(
            Icons.location_city,
            size: 40,
          ),
        ),
        // Text(finalvalue)
      ],
    ));
  }
}
