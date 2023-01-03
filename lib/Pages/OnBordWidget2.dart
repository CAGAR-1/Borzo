import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnBoardWidget2 extends StatefulWidget {
  const OnBoardWidget2({super.key});

  @override
  State<OnBoardWidget2> createState() => _OnBoardWidgetState();
}

class _OnBoardWidgetState extends State<OnBoardWidget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            Expanded(
                child: Container(
              child: Image(
                image: AssetImage('images/page2.jpg'),
                height: 200,
                width: 200,
              ),
              color: Colors.white,
            )),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Its affordable: pricing starts from Rs 45",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "We deliver documents, flowers,food,apparel and more precisely on your schedule")
                ],
              ),
              height: 200,
              width: 600,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
