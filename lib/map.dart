import 'dart:async';
import 'package:borzo/Pages/Neworders.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter_geocoder/geocoder.dart';
// import 'package:flutter_geocoder/geocoder.dart';
// import 'package:flutter_geocoder/geocoder.dart';
// import 'package:flutter_geocoder/model.dart';
// import 'package:geolocator/geolocator.dart';

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BrozoMap extends StatefulWidget {
  TextEditingController controller;
  //  BrozoMap({super.key,required });

  BrozoMap({super.key, required this.controller});

  @override
  State<BrozoMap> createState() => _BrozoMapState();
}

class _BrozoMapState extends State<BrozoMap> {
  Completer<GoogleMapController> _controller = Completer();

  // TextEditingController AddressController = TextEditingController();

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
        body: Stack(
      children: [
        Positioned.fill(
          child: GoogleMap(
            onTap: (LatLng latlang) async {
              // print('or lat and long is: $latlang');
              var valuess = latlang;

              print(valuess);

              final coordinates =
                  new Coordinates(latlang.latitude, latlang.longitude);
              var address = await Geocoder.local
                  .findAddressesFromCoordinates(coordinates);

              var first = address.first;
              print("Address: " +
                  first.featureName.toString() +
                  first.addressLine.toString());

              setState(() {
                widget.controller.text =
                    first.featureName.toString() + first.addressLine.toString();
                Get.to(NewOrders);
              });
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
          child: Image(
            image: AssetImage(
              "images/marker.png",
            ),
            height: 30,
            width: 30,
          ),
        )
      ],
    ));
  }
}
