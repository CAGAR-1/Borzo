import 'package:borzo/Country_Region/Country_Choose.dart';
import 'package:borzo/widgets/constant.dart';
import 'package:borzo/Pages/mainscreen.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  String names;
  String flads;
  WelcomePage({super.key, required this.names, required this.flads});

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
                          SizedBox(
                            width: 5,
                          ),
                          Image(
                            image: AssetImage(
                              widget.flads,
                            ),
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
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
                              color: bluecolor,
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
