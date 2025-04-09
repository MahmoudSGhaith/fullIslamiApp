
import 'package:flutter/material.dart';

import '../../../core/assets_manger.dart';
import '../../../core/colors_manger.dart';

class MostRecentSura extends StatelessWidget {
  const MostRecentSura({super.key});

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    return Container(
      width: 283,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: ColorsManger.gold,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: heightQuery * 0.015,
              vertical: widthQuery * 0.02,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Al_Anbiaa",
                  style: TextStyle(
                    color: ColorsManger.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "الأنبياء",
                  style: TextStyle(
                    color: ColorsManger.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "112 verses",
                  style: TextStyle(
                    color: ColorsManger.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Image(image: AssetImage(AssetsManger.mostaRecentImage)),
        ],
      )
    );
  }
}
