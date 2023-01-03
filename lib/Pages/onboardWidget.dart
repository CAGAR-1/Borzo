import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnBoardWidget extends StatefulWidget {
  const OnBoardWidget({super.key});

  @override
  State<OnBoardWidget> createState() => _OnBoardWidgetState();
}

class _OnBoardWidgetState extends State<OnBoardWidget> {
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
                image: AssetImage(
                  'images/page1.jpg',
                ),
                height: 250,
                width: 250,
              ),
              color: Colors.white,
            )),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wefast is a same-day delivery service",
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
