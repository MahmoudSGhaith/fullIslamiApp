
import 'package:flutter/material.dart';
import 'package:islami/core/assets_manger.dart';
import 'package:islami/core/colors_manger.dart';
import 'package:islami/presentation/tabs/quran/quran_resourses.dart';

class SuraListDesigne extends StatefulWidget {
  int index;
  SuraListDesigne({super.key , required this.index});

  @override
  State<SuraListDesigne> createState() => _SuraListDesigneState();
}

class _SuraListDesigneState extends State<SuraListDesigne> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(AssetsManger.suraNumberDesigne),
            Text(
              "${widget.index + 1}",
              style: TextStyle(
                color: ColorsManger.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Text(
              QuranResourses.englishQuranList[widget.index],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            Text(
              "${QuranResourses.versesNumberList[widget.index]} verses",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
        Spacer(flex: 6,),
        Text(
          QuranResourses.arabicQuranList[widget.index],
          style: TextStyle(
            color: ColorsManger.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
