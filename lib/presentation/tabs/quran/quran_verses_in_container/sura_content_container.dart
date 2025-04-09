import 'package:flutter/material.dart';
import 'package:islami/core/colors_manger.dart';

class SuraContentContainer extends StatefulWidget {
  String suraContent;
  int index;

  SuraContentContainer({
    super.key,
    required this.index,
    required this.suraContent,
  });

  @override
  State<SuraContentContainer> createState() => _SuraContentContainerState();
}

class _SuraContentContainerState extends State<SuraContentContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isSelected = !isSelected;
        setState(() {
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: isSelected ? ColorsManger.gold : Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: ColorsManger.gold),
        ),
        child: Text(
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          "${widget.suraContent}[${widget.index + 1}]",
          style: isSelected ? TextStyle(
            color: ColorsManger.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ) : TextStyle(
            color: ColorsManger.gold,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
