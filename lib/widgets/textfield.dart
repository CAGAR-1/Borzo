import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  Icon? sicon;
  TextEditingController? controller;
  final String? initvalue;

  CustomTextField(
      {super.key, required this.label, this.sicon, this.controller,this.initvalue});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initvalue,
      decoration: InputDecoration(labelText: label, suffixIcon: sicon,),
      textAlign: TextAlign.start,

    );
  }
}
