import 'dart:async';

import 'package:borzo/Otp/NewPassword.dart';
import 'package:borzo/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class OtpScreen extends StatefulWidget {
  OtpScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final otp1 = GlobalKey<FormState>();
  final otp2 = GlobalKey<FormState>();
  final otp3 = GlobalKey<FormState>();
  final otp4 = GlobalKey<FormState>();
  int timeLeft = 20;

  @override
  void initState() {
    // TODO: implement initState
    _startCountDown();

    super.initState();
  }

  void _startCountDown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (timeLeft > 0) {
          setState(() {
            timeLeft--;
          });
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new),
            color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter OTP",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "The OTP was sent to +91 123456789",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Otp(
                  formsss: otp1,
                )),
                
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Otp(
                  formsss: otp2,
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Otp(
                  formsss: otp3,
                )),
                SizedBox(
                  width: 10,
                ),

                Expanded(
                    child: Otp(
                  formsss: otp4,
                )),
                SizedBox(
                  width: 10,
                ),
                
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.snackbar(
                                              "", "Code Resend Successfullt");
                                        },
                                        child: Text(
                                          timeLeft == 0
                                              ? 'Resend OTP'
                                              : "Resend In " +
                                                  timeLeft.toString() +
                                                  ' ' +
                                                  'Sec',
                                          style: TextStyle(color: bluecolor),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: (() {
                                        setState(() {
                                        
                                        });
                                      
                                      }),
                                      child: GestureDetector(
                                        onTap: (() {
                                          if (otp1.currentState!.validate() ||
                                              otp2.currentState!.validate() ||
                                              otp3.currentState!.validate() ||
                                              otp4.currentState!.validate()) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NewPassword()),
                                            );
                                          } else {}
                                        }),
                                        child: InkWell(
                                          child: Container(
                                            child: Icon(
                                              Icons.keyboard_arrow_right,
                                              color: Colors.white,
                                            ),
                                            height: 50,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                  // child:
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Otp extends StatefulWidget {
  final Key? formsss;

  Otp({
    this.formsss,
    Key? key,
  }) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {

  final OtpForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Form(
        key: widget.formsss,
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Enter OTP';
            } else
              null;
          },
          keyboardType: TextInputType.number,
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          onChanged: (val) {
            if (val.length == 1) {
              FocusScope.of(context).nextFocus();
            }
            if (val.isEmpty) {
              FocusScope.of(context).previousFocus();
            }
          },
          decoration: const InputDecoration(
            hintText: ('0'),
          ),
        ),
      ),
    );
  }
}
