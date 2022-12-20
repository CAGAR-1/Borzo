import 'package:borzo/Neworders.dart';
import 'package:borzo/bottomsheet.dart';
import 'package:borzo/mainscreen.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
    home: NewOrders(),
  ));
}
