import 'package:flutter/material.dart';
import '../../../core/colors_manger.dart';

class PrayerTimesCard extends StatelessWidget {
  late double widthQuery;
  late double heightQuery;
  final String prayName;
  final String prayTime;
  final String pray;

  PrayerTimesCard({
    super.key,
    required this.prayName,
    required this.prayTime,
    required this.pray,
  });

  @override
  Widget build(BuildContext context) {
    widthQuery = MediaQuery.of(context).size.width;
    heightQuery = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: widthQuery * 0.01),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background Container (Gradient card)
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: ColorsManger.black),
              gradient: LinearGradient(
                colors: [ColorsManger.black, ColorsManger.gold],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Content inside the card
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                prayName,
                style: TextStyle(
                  color: ColorsManger.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(height: 5), // Adds some space between the text widgets
              Text(
                prayTime,
                style: TextStyle(
                  color: ColorsManger.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 5),
              Text(
                pray,
                style: TextStyle(
                  color: ColorsManger.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
