import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnBoardWidget3 extends StatefulWidget {
  const OnBoardWidget3({super.key});

  @override
  State<OnBoardWidget3> createState() => _OnBoardWidget3State();
}

class _OnBoardWidget3State extends State<OnBoardWidget3> {
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
                image: AssetImage('images/page3.jpg'),
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
                    "We are reliable",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "We are quickly find a courier, notify at each delivery stage, and assist you in chat")
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
