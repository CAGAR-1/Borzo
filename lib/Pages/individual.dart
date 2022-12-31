import 'package:borzo/widgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Individual extends StatefulWidget {
  const Individual({super.key});

  @override
  State<Individual> createState() => _IndividualState();
}

class _IndividualState extends State<Individual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextField(
              label: "Phone number",
              initvalue: "+914",
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              label: "Password",
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Forgot Password",
                          style: TextStyle(fontSize: 17, color: Colors.blue),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                child: Center(
                    child: Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: Colors.white,
                )),
                height: 50,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
