
import 'package:flutter/material.dart';
import 'package:islami/mainlayout.dart';
import 'package:islami/presentation/screens/splash/splash.dart';
import 'package:islami/presentation/tabs/quran/quran_verses_in_container/sura_details_container.dart';
import '../../presentation/home/home.dart';
import '../../presentation/screens/on_boarding/on_boarding.dart';
import '../../presentation/tabs/quran/sura_content.dart';

class AppRoutes {

  static const String mainLayout = "mainLayout";
  static const String splash = "splash";
  static const String home = "Home";
  static const String suraContent = "SuraContent";
  static const String onBoarding = "onBoarding";
  static const String suraDetailsContainer = "suraDetailsContainer";

  static Map<String , WidgetBuilder> appRoutes = {
    mainLayout : (context) =>Mainlayout(),
    splash : (context) => Splash(),
    home : (context) => Home(),
    suraContent : (context) => SuraContent(),
    onBoarding : (context) => OnBoardingScreen(),
    suraDetailsContainer : (context) => SuraDetailsContainer(),
  };
}