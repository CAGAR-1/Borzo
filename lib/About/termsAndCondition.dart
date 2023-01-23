import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Column(
          children: [
            Center(
                child: Column(
              children: [
                Image(
                  image: AssetImage('images/b.jpg'),
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 17,
                ),
                Text(
                  'Borzo',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Version 1.7.3.1 (754)",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 19,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "About Service",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Terms of Use",
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Privacy policy",
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Report a problem",
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey,
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
