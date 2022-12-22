import 'package:borzo/Pages/Chat.dart';

import 'package:borzo/Pages/Neworders.dart';
import 'package:borzo/Pages/Profile.dart';
import 'package:borzo/Pages/orders.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [const orders(), const Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.black,
                    size: 28,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                // pageIndex = 1;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewOrders()));
              });
            },
            icon: pageIndex == ''
                ? const Icon(
                    Icons.work_rounded,
                    color: Colors.black,
                    size: 28,
                  )
                : const Icon(
                    Icons.work_outline_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Chat()));
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.widgets_rounded,
                    color: Colors.black,
                    size: 28,
                  )
                : const Icon(
                    Icons.widgets_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 28,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.black,
                    size: 28,
                  ),
          ),
        ],
      ),
    );
  }
}
