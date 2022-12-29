import 'package:borzo/Pages/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:http/http.dart';

class CountryName extends StatefulWidget {
  CountryName({
    super.key,
  });

  @override
  State<CountryName> createState() => _CountryNameState();
}

class _CountryNameState extends State<CountryName> {
  String ChangePlace = 'Delhi';

  List PlaceName = [
    'Delhi',
    'Chennai',
    'Kolkata',
    'Kanpur',
    'Delhi',
    'Delhi',
    'Delhi',
    'Delhi',
    'Delhi',
    'Delhi',
    'Delhi',
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: (() {
              Navigator.pop(context);
            }),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Select region",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Text(
                      "India",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    // Image(
                    //   image: AssetImage(
                    //     "indiaa.png",
                    //   ),
                    //   height: 10,
                    // )
                  ],
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: PlaceName.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (() {
                        setState(() {
                          print(PlaceName[index]);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Profile(locations: (PlaceName[index])),
                            ),
                          );
                        });
                      }),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              PlaceName[index],
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
