import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  Icon? sicon;
  TextEditingController? controller;

  CustomTextField(
      {super.key, required this.label, this.sicon, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: label, suffixIcon: sicon),
      textAlign: TextAlign.start,
    );
  }
}
