import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  Icon? sicon;

  CustomTextField({super.key, required this.label,  this.sicon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: label, suffixIcon: sicon),
      textAlign: TextAlign.start,
    );
    ;
  }
}
