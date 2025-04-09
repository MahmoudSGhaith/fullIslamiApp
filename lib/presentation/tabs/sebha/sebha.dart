import 'package:flutter/material.dart';
import 'package:islami/core/assets_manger.dart';
import 'package:islami/core/colors_manger.dart';

class Sebha extends StatefulWidget {
  Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int count = 0;
  int newText = 0;
  String sebhaText = "سبحان الله";

  void updateSebhaText() {
    if (newText == 0) {
      sebhaText = "سبحان الله";
    } else if (newText == 1) {
      sebhaText = "الله أكبر";
    } else if (newText == 2) {
      sebhaText = "الحمد لله";
    }
  }

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SizedBox(height: heightQuery * 0.05),
        Text(
          "سَبِّحِ اسْمَ رَبِّكَ الْأَعْلَى",
          style: TextStyle(
            color: ColorsManger.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: heightQuery * 0.04),
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                AssetsManger.sebha,
                width: widthQuery * 0.9,
                height: heightQuery * 0.45,
                fit: BoxFit.contain,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: heightQuery * 0.09),
                    child: Text(
                      sebhaText,
                      style: TextStyle(
                        color: ColorsManger.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: heightQuery * 0.02),
                  InkWell(
                    onTap: () {
                      count++;
                      if (count == 33) {
                        count = 0;
                        newText++;
                        if (newText > 2) {
                          newText = 0;
                        }
                        updateSebhaText();
                      }
                      setState(() {
                      });
                    },
                    onLongPress: () {
                      count = 0;
                      setState(() {

                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorsManger.gold)
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: widthQuery * 0.04,
                        horizontal: heightQuery * 0.06,
                      ),
                      child: Text(
                        "$count",
                        style: TextStyle(
                          color: ColorsManger.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
