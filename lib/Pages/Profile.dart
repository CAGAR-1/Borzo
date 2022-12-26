import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                    Row(
                      children: [
                        Text("Mumbai"),
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
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.error_outline),
                    SizedBox(
                      width: 10,
                    ),
                    Text("About")
                  ],
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
                              child: Container(
                                child: Center(
                                    child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )),
                                // width: MediaQuery.of(context).size.width / 1.5,
                                // height: MediaQuery.of(context).size.height / 0.9,
                                height: MediaQuery.of(context).size.height / 18,

                                // width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Create Account",
                        style: TextStyle(fontSize: 15, color: Colors.blue),
                      )
                    ],
                  ),
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.pink,
                )),
          ),
        ],
      ),
    );
  }
}
