import 'package:flutter/material.dart';
import 'package:islami/core/routes/app_routes.dart';

import '../../../core/assets_manger.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

@override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Future.delayed(Duration(seconds: 2) , (){
      Navigator.pushReplacementNamed(context, AppRoutes.onBoarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              AssetsManger.splashScreen,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              "it's made by mahmoud ghaith",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
