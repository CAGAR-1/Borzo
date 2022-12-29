import 'package:borzo/Pages/business.dart';
import 'package:borzo/Pages/individual.dart';
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
                Container(
                  child: Tab(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: Text(
                          "Individual",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[200],
                    ),
                    child: Center(
                      child: Text(
                        "Business",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),

                  // child:
                ),
                // SizedBox(
                //   height: 30,
                // )
              ],
            ),
            backgroundColor: Colors.white, // TabBar
          ), // AppBar
          body: TabBarView(
            children: [Individual(), Business()],
          ), // TabBarView
        ), // Scaffold
      ), // Defa,
    );
  }
}
