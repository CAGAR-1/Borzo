import 'dart:ui';

import 'package:borzo/Swap/DeliverNow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Positioned.fill(
              child: Container(
            color: Colors.white.withOpacity(0.5),
          )),

          Positioned.fill(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 500),
            child: Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.clear,
                            color: Colors.white,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: 20, // Image radius
                      backgroundImage: AssetImage('images/logob.jpg'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Hi, from Borzo",
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Icon(
                          Icons.waving_hand,
                          color: Colors.yellow,
                        )
                      ],
                    ),
                    Text(
                      "Ask us anything",
                      style: TextStyle(
                          fontSize: 17, color: Colors.black.withOpacity(0.5)),
                    )
                  ],
                ),
              ),
            ),
          )),
          Positioned.fill(
              child: Padding(
            padding: const EdgeInsets.only(
                bottom: 435, left: 20, right: 20, top: 225),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get help',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Search articles ...",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(20)),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "The team can help if needed",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              // color: Colors.white,
            ),
          )),
          // ListView(
          //   children: [
          //     Container(
          //       height: 100,
          //       width: 100,
          //       color: Colors.blue,
          //     )
          //   ],
          // )
        ],
      ),
    ));
  }
}
