import 'package:borzo/Pages/Login_Group/business.dart';
import 'package:borzo/Pages/Login_Group/individual.dart';

import 'package:flutter/material.dart';

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
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: (() {
              Navigator.pop(context);
            }),
            child: Icon(
              Icons.clear,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Login",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
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
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                      setState(() {
                        ChangeColor = true;
                      });
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
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                      setState(() {
                        ChangeColor = false;
                      });
                     
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
  }
}
