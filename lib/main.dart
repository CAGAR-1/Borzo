import 'package:borzo/Pages/Chat.dart';
import 'package:borzo/Pages/Login.dart';
import 'package:borzo/Pages/Neworders.dart';
import 'package:borzo/Pages/searchpage.dart';

import 'package:borzo/mainscreen.dart';
import 'package:borzo/map.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
    home: Login(),
  ));
}
