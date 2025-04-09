import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../core/assets_manger.dart';
import '../../../core/colors_manger.dart';
import '../../../core/routes/app_routes.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  late double heightQuery;

  @override
  Widget build(BuildContext context) {
    heightQuery = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
            buildPageViewModel(
              title: "Welcome To Islmi App",
              text: "",
              titleFontSize: 24,
              textFontSize: 20,
              imagePath: AssetsManger.onBoardingWelcome,
              // height: 0.05,
            ),
            buildPageViewModel(
              title: "Welcome To Islmi App",
              text: "We Are Very Excited To Have\nYou In Our Community",
              titleFontSize: 24,
              textFontSize: 17,
              imagePath: AssetsManger.onBoardingMosque,
              //height: 0.05,
            ),
            buildPageViewModel(
              title: "Reading the Quran",
              text: "Read, and your Lord is the Most Generous",
              titleFontSize: 24,
              textFontSize: 17,
              imagePath: AssetsManger.onBoardingQuran,
              //height: 0.05,
            ),
            buildPageViewModel(
              title: "Bearish",
              text: "Praise the name of your Lord, the Most High",
              titleFontSize: 24,
              textFontSize: 18,
              imagePath: AssetsManger.onBoardingYarb,
              // height: 0.05,
            ),
            buildPageViewModel(
              title: "Holy Quran Radio",
              text:
              "You can listen to the Holy Quran Radio through the application for free and easily",
              titleFontSize: 24,
              textFontSize: 15,
              imagePath: AssetsManger.onBoardingMic,
              //height: 0.03,
            ),
          ],
          globalHeader: Image(
            image: AssetImage(AssetsManger.islamiLogo),
            height: heightQuery * 0.11,
          ),
          showBackButton: true,
          back: Text("Back", style: TextStyle(color: ColorsManger.gold)),
          showNextButton: true,
          next: Text("Next", style: TextStyle(color: ColorsManger.gold)),
          showDoneButton: true,
          done: Text("Done", style: TextStyle(color: ColorsManger.gold)),
          dotsDecorator: DotsDecorator(
            color: Colors.grey,
            activeColor: ColorsManger.gold,
            size: Size(5, 5),
            activeSize: Size(20, 8),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onDone: () {
            Navigator.pushReplacementNamed(context, AppRoutes.home);
          },
        ),
      ),
    );
  }

  PageViewModel buildPageViewModel({
    required String title,
    required String text,
    required String imagePath,
    required double titleFontSize,
    required double textFontSize,
    //required double height,
  }) {
    return PageViewModel(
      title: "",
      bodyWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: heightQuery * 0.05),
            child: Image(
              image: AssetImage(imagePath),
              height: heightQuery * 0.45,
            ),
          ),
          Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorsManger.gold,
                fontSize: titleFontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: heightQuery * 0.03),
          Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorsManger.gold,
                fontSize: textFontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
