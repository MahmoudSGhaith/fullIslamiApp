
import 'package:flutter/material.dart';
import 'package:islami/config/theme/app_theme.dart';
import 'package:islami/core/routes/app_routes.dart';

class Mainlayout extends StatelessWidget {
  const Mainlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      routes: AppRoutes.appRoutes,
      theme: AppTheme.appTheme,
    );
  }
}
