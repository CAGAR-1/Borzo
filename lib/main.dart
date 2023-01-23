import 'package:borzo/Country_Region/Country_Choose.dart';
import 'package:borzo/Country_Region/Country_Name.dart';
import 'package:borzo/Onboard/onboarding_screen.dart';
import 'package:borzo/Otp/NewPassword.dart';
import 'package:borzo/Otp/Otp_Login.dart';
import 'package:borzo/Otp/Otppage.dart';
import 'package:borzo/Pages/Chat.dart';
import 'package:borzo/Pages/CreateAccount.dart';
import 'package:borzo/Pages/Login.dart';
import 'package:borzo/Pages/Login_Group/business.dart';
import 'package:borzo/Pages/Login_Group/individual.dart';
import 'package:borzo/Pages/Neworders.dart';
import 'package:borzo/Pages/Profile.dart';
import 'package:borzo/Pages/SplashScreen.dart';
import 'package:borzo/Pages/orders.dart';
import 'package:borzo/Pages/welcomePage.dart';
import 'package:borzo/Swap/DeliverNow.dart';
import 'package:borzo/Swap/Schedule.dart';
import 'package:borzo/mainscreen.dart';
import 'package:borzo/map.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      home: Onboard_Screen(),
      getPages: [
        GetPage(name: '/', page: () => Onboard_Screen()),
        GetPage(name: '/CreateAccount', page: () => CreateAccount()),
        GetPage(name: '/Login', page: () => Login()),
        GetPage(name: '/CreateAccount', page: () => CreateAccount()),
        GetPage(name: '/Orders', page: () => orders()),
        GetPage(name: '/Chat', page: () => Chat()),
        GetPage(name: '/Profile', page: () => Profile()),
        GetPage(name: '/CountryChoose', page: () => Country_Choose()),
        GetPage(name: '/CountryName', page: () => CountryName()),
        GetPage(name: '/NewPassword', page: () => NewPassword()),
        GetPage(name: '/LoginOtp', page: () => LoginOtp()),
        GetPage(name: '/Business', page: () => Business()),
        GetPage(name: '/Individual', page: () => Individual()),
        GetPage(name: '/NewOrders', page: () => NewOrders()),
        GetPage(name: '/Profile', page: () => Profile()),
        GetPage(name: '/Splash_Screen', page: () => SplashScreen()),
        GetPage(name: '/DeliverNow', page: () => DeliverNow()),
        GetPage(name: '/Schedule', page: () => Schedule()),
      ],
    ),
  );
}
