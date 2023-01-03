import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String? errorText;
  Icon? sicon;
  TextEditingController? controller;
  final String? initvalue;

  final Key? formsss;

  CustomTextField(
      {super.key,
      required this.label,
      this.formsss,
      this.errorText,
      this.sicon,
      this.controller,
      this.initvalue});

  @override
  Widget build(BuildContext context) {
    final _formfield = GlobalKey<FormState>();
    return Form(
      key: formsss,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return errorText;
          } else
            null;
        },
        controller: controller,
        initialValue: initvalue,
        decoration: InputDecoration(
          labelText: label,
          suffixIcon: sicon,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
