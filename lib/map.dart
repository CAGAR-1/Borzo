import 'dart:async';
import 'package:borzo/Pages/Neworders.dart';

import 'package:flutter_geocoder/geocoder.dart';

import 'package:flutter/material.dart';

// import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:http/retry.dart';

class BrozoMap extends StatefulWidget {
  TextEditingController controller;

  BrozoMap({super.key, required this.controller});

  @override
  State<BrozoMap> createState() => _BrozoMapState();
}

class _BrozoMapState extends State<BrozoMap> {
  Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kLake = CameraPosition(
    target: LatLng(28.209620, 83.985523),
    zoom: 14,
  );

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
        body: SafeArea(
      child: Stack(
        children: [
          Positioned.fill(
            child: GoogleMap(
              onTap: (LatLng latlang) async {
                var valuess = latlang;

                print(valuess);

                final coordinates =
                    new Coordinates(latlang.latitude, latlang.longitude);
                var address = await Geocoder.local
                    .findAddressesFromCoordinates(coordinates);

                var first = address.first;

                setState(() {
                  widget.controller.text = first.featureName.toString() +
                      first.addressLine.toString();

                  print(first.featureName.toString() +
                      first.addressLine.toString());
                  print('sdaffdsa');

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => NewOrders()),
                  // );
                });
              },
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              markers: markers.map((e) => e).toSet(),
              polylines: _polylines,
              initialCameraPosition: _kLake,
              mapType: MapType.normal,
              myLocationButtonEnabled: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                InkWell(
                    onTap: (() {
                      Navigator.pop(context);
                    }),
                    child: Icon(Icons.clear, size: 40, color: Colors.black))
              ],
            ),
          ),
          Center(
            child: Image(
              image: AssetImage(
                "images/marker.png",
              ),
              height: 30,
              width: 30,
            ),
          )
        ],
      ),
    ));
  }
}
