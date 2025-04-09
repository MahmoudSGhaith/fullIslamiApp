import 'package:flutter/material.dart';

import '../../../core/colors_manger.dart';

class RecitersBox extends StatelessWidget {
  String textName;
  IconData icon1;
  IconData icon2;
  String imagePath;
  late double widthQuery;
  late double heightQuery;

  RecitersBox({
    super.key,
    required this.textName,
    required this.icon1,
    required this.icon2,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    widthQuery = MediaQuery.of(context).size.width;
    heightQuery = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(vertical: widthQuery * 0.05),
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          image: AssetImage(imagePath),
          fit: BoxFit.fitWidth,
        ),
        borderRadius: BorderRadius.circular(25),
        color: ColorsManger.gold,
      ),
      width: widthQuery * 0.9,
      height: heightQuery * 0.2,
      child: Column(
        children: [
          Text(
            textName,
            style: TextStyle(
              color: ColorsManger.black,
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
          ),
          SizedBox(height: heightQuery * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon1, color: ColorsManger.black, size: 40),
              Icon(icon2, color: ColorsManger.black, size: 30),
            ],
          ),
        ],
      ),
    );
  }
}
