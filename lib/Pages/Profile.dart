import 'dart:ui';

import 'package:borzo/Country_Region/Country_Name.dart';
import 'package:borzo/Pages/CreateAccount.dart';
import 'package:borzo/Pages/Login.dart';
import 'package:borzo/Pages/Neworders.dart';
import 'package:borzo/About/termsAndCondition.dart';
import 'package:borzo/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Profile extends StatefulWidget {
  String? locations;

  Profile({super.key, this.locations});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.recycling_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Region",
                          )
                        ],
                      ),
                      InkWell(
                        onTap: (() {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CountryName()),
                            );
                          });
                        }),
                        child: Row(
                          children: [
                            Text(widget.locations.toString()),
                            SizedBox(
                              width: 5,
                            ),
                            Image(
                              image: AssetImage('images/india.png'),
                              height: 30,
                              width: 30,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TermsAndCondition()),
                      );
                    }),
                    child: Row(
                      children: [
                        Icon(Icons.error_outline),
                        SizedBox(
                          width: 10,
                        ),
                        Text("About")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login()),
                                    );
                                  },
                                  child: Container(
                                    child: Center(
                                        child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    )),
                                   
                                    height:
                                        MediaQuery.of(context).size.height / 18,

                                 
                                    decoration: BoxDecoration(
                                        color: bluecolor,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateAccount()),
                            );
                          },
                          child: Text(
                            "Create Account",
                            style: TextStyle(fontSize: 15, color: bluecolor),
                          ),
                        )
                      ],
                    ),
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width,
           
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
