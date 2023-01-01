import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
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
              children: const [
                Otp(),
                Otp(),
                Otp(),
                Otp(),
              ],
            ),
            const SizedBox(
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
                                      child: Text(
                                        "By registering or signing in you accept the terms and conditions and confirm that you've read and acknowledged the privacy Policy of wefast India private limited",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: (() {
                                        // Get.snackbar(
                                        //     "", "Please Enter Valid Number",
                                        //     backgroundColor: Colors.grey[200],
                                        //     colorText: Colors.black);
                                      }),
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
                                    // Text(
                                    //   "Login",
                                    //   style: TextStyle(
                                    //       color: Colors.blueAccent,
                                    //       fontSize: 20),
                                    // ),
                                  ],
                                  // child:
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Text(
                        //   "Create Account",
                        //   style: TextStyle(fontSize: 15, color: Colors.blue),
                        // )
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

class Otp extends StatelessWidget {
  const Otp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.headline6,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        decoration: const InputDecoration(
          hintText: ('0'),
        ),
        onSaved: (value) {},
      ),
    );
  }
}
