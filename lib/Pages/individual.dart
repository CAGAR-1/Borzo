import 'package:borzo/Pages/Otppage.dart';
import 'package:borzo/constant.dart';
import 'package:borzo/mainscreen.dart';
import 'package:borzo/widgets/textfield.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Individual extends StatefulWidget {
  const Individual({super.key});

  @override
  State<Individual> createState() => _IndividualState();
}

class _IndividualState extends State<Individual> {
  final Forming_ = GlobalKey<FormState>();
  final phoneForm = GlobalKey<FormState>();
  TextEditingController number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextField(
              // formsss: Forming_,
              label: "Phone number",
              errorText: 'Please enter valid Phone Number',
              initvalue: "+914",
            ),
            CustomTextField(
              formsss: Forming_,
              errorText: "Please Enter Password",
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
              GestureDetector(
                onTap: (() {
                  if (Forming_.currentState!.validate()) {
                    Get.snackbar('', 'You login successfull');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                    number.clear();
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
