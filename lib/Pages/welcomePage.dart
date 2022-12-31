import 'dart:ui';

import 'package:borzo/Pages/Country_Choose.dart';
import 'package:borzo/Pages/Country_Name.dart';
import 'package:borzo/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomePage extends StatefulWidget {
  String names;
  WelcomePage({super.key, required this.names});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(
                'images/borzo.png',
              ),
              height: 150,
              width: 150,
            ),
            Text(
              "Welcome to \nBorzo!",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 39,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Country_Choose()));

                print("Hellos");
              },
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Are you in",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Image(
                            image: AssetImage(
                              'images/india.png',
                            ),
                            height: 20,
                            width: 30,
                          ),
                          Text(
                            // "India?",
                            widget.names,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                    )),
                    Expanded(child: Container())
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: (() {
                          // print("dsf");

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        }),
                        child: Container(
                          child: Center(
                              child: Text(
                            "Yes",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                          height: 50,
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
