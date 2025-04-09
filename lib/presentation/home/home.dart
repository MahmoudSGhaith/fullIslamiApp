import 'package:flutter/material.dart';
import 'package:islami/core/assets_manger.dart';
import 'package:islami/core/colors_manger.dart';
import 'package:islami/presentation/tabs/quran/quran.dart';
import 'package:islami/presentation/tabs/sebha/sebha.dart';

import '../tabs/hadith/hadeth_card.dart';
import '../tabs/hadith/hadith_item.dart';
import '../tabs/prayTimes/pray_times.dart';
import '../tabs/radio/radio.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List<Widget> tabs = [Quran(), HadethCard(), Sebha(), RadioTab(), PrayTimes()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(buildTabsBackground()),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),

        Scaffold(
          backgroundColor: ColorsManger.transparent,
          bottomNavigationBar: buildBottomNavigationBar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(image: AssetImage(AssetsManger.islamiLogo)),
              tabs[selectedIndex],
            ],
          ),
        ),
      ],
    );
  }

  Widget buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (newIndex) {
        selectedIndex = newIndex;
        setState(() {});
      },
      items: [
        BottomNavigationBarItem(
          icon: buildIcon(
            isSelected: selectedIndex == 0,
            iconPath: AssetsManger.quranIcon,
          ),
          label: "Quran",
        ),
        BottomNavigationBarItem(
          icon: buildIcon(
            isSelected: selectedIndex == 1,
            iconPath: AssetsManger.hadithIcon,
          ),
          label: "hadith",
        ),
        BottomNavigationBarItem(
          icon: buildIcon(
            isSelected: selectedIndex == 2,
            iconPath: AssetsManger.sebhaIcon,
          ),
          label: "sebha",
        ),
        BottomNavigationBarItem(
          icon: buildIcon(
            isSelected: selectedIndex == 3,
            iconPath: AssetsManger.radioIcon,
          ),
          label: "radio",
        ),
        BottomNavigationBarItem(
          icon: buildIcon(
            isSelected: selectedIndex == 4,
            iconPath: AssetsManger.timeIcon,
          ),
          label: "prayTimes",
        ),
      ],
    );
  }

  Widget buildIcon({required bool isSelected, required String iconPath}) {
    return isSelected
        ? Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: ColorsManger.black.withAlpha(100),
          ),
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 3),
          child: ImageIcon(AssetImage(iconPath)),
        )
        : ImageIcon(AssetImage(iconPath));
  }

  String buildTabsBackground() {
    switch (selectedIndex) {
      case 0:
        return AssetsManger.quranBGImage;
      case 1:
        return AssetsManger.hadithBGImage;
      case 2:
        return AssetsManger.sebhaBGImage;
      case 3:
        return AssetsManger.radioBGImage;
      case 4:
        return AssetsManger.timeBGImage;
      default:
        return AssetsManger.quranBGImage;
    }
  }
}
