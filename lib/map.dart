import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
      zoom: 14);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
  }

  List<Marker> _marker = [];
  List<Marker> _list = const [
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(28.209620, 83.985523),
        infoWindow: InfoWindow(title: "My position"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        initialCameraPosition: _kLake,
        markers: Set<Marker>.of(_marker),
        mapType: MapType.normal,
        myLocationButtonEnabled: true,
      ),
    );
  }
}
