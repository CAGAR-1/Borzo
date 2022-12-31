import 'package:borzo/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (() {
                  Navigator.pop(context);
                }),
                child: Icon(
                  Icons.clear,
                  size: 25,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Mobile No",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "OTP will be sent on this number",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              CustomTextField(
                label: "",
                initvalue: '+91',
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "By registering or signing in you accept the terms and conditions and confirm that you've read and acknowledged the privacy Policy of wefast India private limited",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
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
                              ),
                            ],
                          ),
                          // Text(
                          //   "Create Account",
                          //   style: TextStyle(fontSize: 15, color: Colors.blue),
                          // )
                        ],
                      ),
                      // height: MediaQuery.of(context).size.height / 10,
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.pink,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
