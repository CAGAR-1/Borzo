import 'package:borzo/Pages/Otppage.dart';
import 'package:borzo/constant.dart';
import 'package:borzo/widgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Business extends StatefulWidget {
  const Business({super.key});

  @override
  State<Business> createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextField(
              label: "Email",
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              label: "Password",
            )
          ],
        ),
      )),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OtpScreen()),
                      );
                    }),
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            "Forgot Password",
                            style: TextStyle(fontSize: 17, color: bluecolor),
                          ),
                        ],
                      ),
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
                    color: bluecolor, borderRadius: BorderRadius.circular(30)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
