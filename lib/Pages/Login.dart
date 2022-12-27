import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool ChangeColor = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            bottom: TabBar(
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(
                  child: Container(
                    child: Text(
                      "Individual",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    // color: Colors.grey[200],
                  ),
                  // child: InkWell(
                  // onTap: (() {
                  //   setState(() {
                  //     print(ChangeColor);
                  //     ChangeColor = !ChangeColor;
                  //     print(ChangeColor);
                  //   });
                  // }),
                  // child: Container(
                  //   decoration: BoxDecoration(
                  //       color: ChangeColor ? Colors.grey[200] : Colors.white,
                  //       borderRadius: BorderRadius.circular(20)),
                  //   child: Center(
                  //     child: Text(
                  //       "Individual",
                  //       style: TextStyle(color: Colors.black, fontSize: 20),
                  //     ),
                  //   ),
                  // ),
                ),
                Tab(
                  child: Text(
                    "Business",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),

                  // child:

                  // InkWell(
                  // onTap: (() {
                  //   setState(() {
                  //     ChangeColor = !ChangeColor;
                  //   });
                  // }),
                  // child:

                  // Container(
                  //   height: MediaQuery.of(context).size.height,
                  //   width: MediaQuery.of(context).size.width,
                  //   decoration: BoxDecoration(
                  //       color: ChangeColor ? Colors.white : Colors.grey[200],
                  //       borderRadius: BorderRadius.circular(20)),
                  //   child: Center(
                  //     child: Text(
                  //       "Business",
                  //       style: TextStyle(color: Colors.black, fontSize: 20),
                  //     ),
                  //   ),
                  // ),
                ),
              ],
            ),
            backgroundColor: Colors.white, // TabBar
          ), // AppBar
          body: TabBarView(
            children: [
              Icon(Icons.holiday_village),
              Icon(Icons.abc_outlined),
            ],
          ), // TabBarView
        ), // Scaffold
      ), // Defa,
    );
  }
}
