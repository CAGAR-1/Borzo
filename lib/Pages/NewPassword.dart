import 'package:borzo/constant.dart';
import 'package:borzo/mainscreen.dart';
import 'package:borzo/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  TextEditingController resetpass = TextEditingController();
  final ResetPassword = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          "Create New password",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(
              'Reset Password',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: bluecolor),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
                child: CustomTextField(
                    formsss: ResetPassword,
                    // controller: resetpass,
                    errorText: 'Please Enter a New Password',
                    label: "Enter New Password")),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (() {
                        if (ResetPassword.currentState!.validate()) {
                          Get.snackbar('', 'Password Change Successfully');
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                          // number.clear();
                        } else {}
                      }),
                      child: Container(
                        child: Center(
                          child: Text(
                            "Confirm",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        height: 50,
                        decoration: BoxDecoration(
                            color: bluecolor,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
