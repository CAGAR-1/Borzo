import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CustomSwitch extends StatefulWidget {
  final String texts;
  CustomSwitch({super.key, required this.texts});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isselect = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.texts,
        style: TextStyle(fontSize: 18, color: Colors.grey[600]),
      ),
      trailing: Container(
        child: Transform.scale(
          scale: 1.5,
          child: SizedBox(
              child: FittedBox(
            fit: BoxFit.fill,
            child: Switch(
              onChanged: (value) {
                setState(() {
                  isselect = !isselect;
                });
              },
              value: isselect,
              activeColor: Colors.blue,
            ),
          )),
        ),
      ),
    );
  }
}
