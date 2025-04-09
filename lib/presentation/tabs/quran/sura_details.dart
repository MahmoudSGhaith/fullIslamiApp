import 'package:flutter/material.dart';
import 'package:islami/core/colors_manger.dart';

class SuraDetails extends StatefulWidget {
  String suraContent = "";

  SuraDetails({super.key , required this.suraContent});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Text(
          textDirection: TextDirection.rtl,
          widget.suraContent,
          style: TextStyle(
            color: ColorsManger.gold,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
