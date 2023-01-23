import 'package:borzo/Otp/Otppage.dart';
import 'package:borzo/widgets/constant.dart';
import 'package:borzo/Pages/mainscreen.dart';
import 'package:borzo/widgets/textfield.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Business extends StatefulWidget {
  const Business({super.key});

  @override
  State<Business> createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  final Forminhg_ = GlobalKey<FormState>();
  final PasswordForming = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextField(
              errorText: "Please Enter Email",
              formsss: Forminhg_,
              label: "Email",
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              errorText: 'Please Enter Password',
              formsss: PasswordForming,
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
                    child: InkWell(
                      onTap: (() {
                        if (Forminhg_.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OtpScreen()),
                          );
                          Get.snackbar('', 'Login in Successfull');
                          // number.clear();
                        } else {}
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
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: (() {
                  if (Forminhg_.currentState!.validate() ||
                      PasswordForming.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                    Get.snackbar('', 'Login in Successfull');
                    // number.clear();
                  } else {}
                }),
                child: Container(
                  child: Center(
                      child: Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: Colors.white,
                  )),
                  height: 50,
                  width: 90,
                  decoration: BoxDecoration(
                      color: bluecolor,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
