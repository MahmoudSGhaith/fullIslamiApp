
import 'package:flutter/material.dart';
import 'package:islami/core/colors_manger.dart';

class AppTheme {

static final ThemeData appTheme = ThemeData(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: ColorsManger.gold ,
    selectedItemColor: ColorsManger.white,
    unselectedItemColor: ColorsManger.black,
    type: BottomNavigationBarType.fixed,
  ),
  scaffoldBackgroundColor: ColorsManger.black,
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: ColorsManger.gold, width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: ColorsManger.gold, width: 2),
      ),
    )
);
}