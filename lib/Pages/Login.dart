import 'package:borzo/Pages/business.dart';
import 'package:borzo/Pages/individual.dart';
import 'package:borzo/Swap/DeliverNow.dart';
import 'package:borzo/Swap/Schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final controller = PageController(initialPage: 0);
  bool ChangeColor = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: (() {
                      controller.animateToPage(0,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOut);
                      setState(() {
                        ChangeColor = true;
                      });
                      print("Pinke is slect");
                    }),
                    child: Container(
                      child: Center(
                          child: Text(
                        "Employee",
                        style: TextStyle(fontSize: 20),
                      )),
                      decoration: BoxDecoration(
                          color: ChangeColor ? Colors.grey[200] : Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      height: 60,
                    ),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: (() {
                      controller.animateToPage(1,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOut);
                      setState(() {
                        ChangeColor = false;
                      });
                      print("Yello is tap");
                    }),
                    child: Container(
                      child: Center(
                          child: Text(
                        "Business",
                        style: TextStyle(fontSize: 20),
                      )),
                      decoration: BoxDecoration(
                          color: ChangeColor ? Colors.white : Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      height: 60,
                    ),
                  )),
                ],
              ),
              Expanded(
                child: PageView(
                  controller: controller,
                  pageSnapping: true,
                  children: [Individual(), Business()],
                ),
              ),
            ],
          ),
        )));
    //  TabBarView(
    //   children: [
    //     Individual(

    //   ), Business()],
    // ), // TabBarView
    // Defa,
  }
}
