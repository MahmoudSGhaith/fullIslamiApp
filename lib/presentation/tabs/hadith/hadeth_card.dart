
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami/presentation/tabs/hadith/hadith_item.dart';

class HadethCard extends StatelessWidget {
  const HadethCard({super.key});

  @override
  Widget build(BuildContext context) {
    double heightQuery = MediaQuery.of(context).size.height;
    return CarouselSlider(
      options: CarouselOptions(
        height: heightQuery * 0.66,
        enlargeCenterPage: true
      ),
      items: List.generate(50, (index) => index + 1).map((e) {
        return HadithItem(hadethNumber: e);
      },).toList(),
    );
  }
}
