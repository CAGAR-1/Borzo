import 'package:borzo/Onboard/onboarding_screen.dart';
import 'package:borzo/mainscreen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      home: Onboard_Screen()));
}
