
import 'package:flutter/material.dart';

import '../../../core/assets_manger.dart';
import '../../../core/colors_manger.dart';

class AzkarCard extends StatelessWidget {
  late double widthQuery;
  late double heightQuery;
  String imagePath;
  String azkar;
  AzkarCard({super.key , required this.imagePath , required this.azkar});

  @override
  Widget build(BuildContext context) {
    widthQuery = MediaQuery.of(context).size.width;
    heightQuery = MediaQuery.of(context).size.height;
    return Container(
        width: widthQuery * 0.4,
        height: heightQuery * 0.2,
        decoration: BoxDecoration(
          color: ColorsManger.black,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ColorsManger.gold),
        ),
        margin: EdgeInsets.symmetric(
          vertical: widthQuery * 0.01,
          horizontal: heightQuery * 0.01,
        ),
        child: Column(
          children: [
            Image(image: AssetImage(imagePath) , width: widthQuery * 0.3,),
            SizedBox(height: heightQuery * 0.01),
            Text(azkar , style: TextStyle(color: ColorsManger.white , fontSize: 16),)
          ],)
    );
  }
}
