import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/assets_manger.dart';
import 'package:islami/core/colors_manger.dart';
import 'package:islami/presentation/tabs/prayTimes/prayer_times_card.dart';

import 'azkar_card.dart';

class PrayTimes extends StatelessWidget {
  late double widthQuery;
  late double heightQuery;

  PrayTimes({super.key});

  @override
  Widget build(BuildContext context) {
    widthQuery = MediaQuery.of(context).size.width;
    heightQuery = MediaQuery.of(context).size.height;
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: heightQuery * 0.01),
            Stack(
              children: [
                Container(
                  child: Image(
                    image: AssetImage(AssetsManger.prayTimeRect),
                    width: widthQuery * 1,
                    height: heightQuery * 0.35,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: widthQuery * 0.03,
                            horizontal: heightQuery * 0.025,
                          ),
                          child: Text(
                            "16 july,\n2024",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: ColorsManger.white,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: widthQuery * 0.037,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Pray Time",
                                style: TextStyle(
                                  color: ColorsManger.black.withAlpha(200),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Tuesday",
                                style: TextStyle(
                                  color: ColorsManger.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: widthQuery * 0.03,
                            horizontal: heightQuery * 0.025,
                          ),
                          child: Text(
                            "09 Muh,\n  1446",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: ColorsManger.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: widthQuery * 0.7,
                      height: heightQuery * 0.18,
                      child: CarouselSlider(
                        items: [
                          PrayerTimesCard(
                            pray: "Am",
                            prayName: "Fajr",
                            prayTime: "04:04",
                          ),
                          PrayerTimesCard(
                            pray: "Am",
                            prayName: "Dhuhr",
                            prayTime: "11:54",
                          ),
                          PrayerTimesCard(
                            pray: "Pm",
                            prayName: "Asr",
                            prayTime: "03:28",
                          ),
                          PrayerTimesCard(
                            pray: "Pm",
                            prayName: "Maghrb",
                            prayTime: "06:15",
                          ),
                          PrayerTimesCard(
                            pray: "Pm",
                            prayName: "Isha",
                            prayTime: "07:35",
                          ),
                        ],
                        options: CarouselOptions(
                          height: heightQuery * 0.2,
                          enlargeCenterPage: true,
                          viewportFraction: 0.4,
                        ),
                      ),
                    ),
                    SizedBox(height: heightQuery * 0.015),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Next Pray - 02:32",
                          style: TextStyle(
                            color: ColorsManger.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(width: widthQuery * 0.06),
                        Icon(Icons.volume_off, color: ColorsManger.black),
                      ],
                    ),
                    SizedBox(height: heightQuery * 0.015),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: widthQuery * 0.01,
                horizontal: heightQuery * 0.02,
              ),
              child: Text(
                "Azkar",
                style: TextStyle(
                  color: ColorsManger.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AzkarCard(imagePath: AssetsManger.image1,azkar: "Evening Azkar",),
                    AzkarCard(imagePath: AssetsManger.image2,azkar: "Morning Azkar",),
                  ],
                ),
                SizedBox(height: heightQuery * 0.01,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AzkarCard(imagePath: AssetsManger.image3,azkar: "Waking Azkar",),
                    AzkarCard(imagePath: AssetsManger.image4,azkar: "Sleeping Azkar",),
                  ],
                ),
                SizedBox(height: heightQuery * 0.01,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AzkarCard(imagePath: AssetsManger.image5,azkar: "Evening Azkar",),
                    AzkarCard(imagePath: AssetsManger.image6,azkar: "Morning Azkar",),
                  ],
                ),
                SizedBox(height: heightQuery * 0.01,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AzkarCard(imagePath: AssetsManger.image7,azkar: "Waking Azkar",),
                    AzkarCard(imagePath: AssetsManger.image8,azkar: "Sleeping Azkar",),
                  ],
                ),
                SizedBox(height: heightQuery * 0.01,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
