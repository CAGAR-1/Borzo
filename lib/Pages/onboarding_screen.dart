import 'package:borzo/Pages/OnBordWidget2.dart';
import 'package:borzo/Pages/OnBordWidget3.dart';
import 'package:borzo/Pages/onboardWidget.dart';
import 'package:borzo/Pages/welcomePage.dart';
import 'package:borzo/mainscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboard_Screen extends StatefulWidget {
  const Onboard_Screen({super.key});

  @override
  State<Onboard_Screen> createState() => _Onboard_ScreenState();
}

class _Onboard_ScreenState extends State<Onboard_Screen> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
  }

  bool lastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                lastPage = index == 2;
              });
            },
            children: [
              OnBoardWidget(),
              OnBoardWidget2(),
              OnBoardWidget3(),
            ],
          ),
        ),
      ),
      bottomSheet: lastPage
          ? Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      primary: Colors.white,
                      backgroundColor: Colors.blue,
                      minimumSize: Size.fromHeight(60)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WelcomePage(
                                names: 'Bhutan',
                                flads: '',
                              )),
                    );
                  },
                  child: Text("Get Started")),
            )
          : Container(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        controller.jumpToPage(2);
                      },
                      child: Text("SKIP"),
                    ),
                    Center(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                      child: Text("Next"),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
