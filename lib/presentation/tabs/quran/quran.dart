import 'package:flutter/material.dart';
import 'package:islami/core/colors_manger.dart';
import 'package:islami/core/routes/app_routes.dart';
import 'package:islami/presentation/tabs/quran/quran_resourses.dart';
import 'package:islami/presentation/tabs/quran/sura_list_designe.dart';

import '../../../core/assets_manger.dart';

class Quran extends StatefulWidget {
  const Quran({super.key});

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  List<int> filterQuranSuras = List.generate(114, (index) {
    return index;
  });

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: heightQuery * 0.02),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  style: TextStyle(
                    color: ColorsManger.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  onChanged: (sura) {
                    filterQuranSurasByNewText(sura);
                  },
                  cursorColor: ColorsManger.white,
                  decoration: InputDecoration(
                    prefixIcon: ImageIcon(
                      AssetImage(AssetsManger.quranIcon),
                      color: ColorsManger.gold,
                    ),
                    label: Text("ابحث عن السوره"),
                    labelStyle: TextStyle(
                      color: ColorsManger.white.withAlpha(200),
                    ),
                  ),
                ),
                SizedBox(height: heightQuery * 0.01),
                Text(
                  "Suras List",
                  style: TextStyle(
                    color: ColorsManger.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: heightQuery * 0.01),
                SizedBox(
                  height: heightQuery * 0.6,
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder:
                        (context, index) => InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              AppRoutes.suraDetailsContainer,
                              arguments: filterQuranSuras[index],
                            );
                          },
                          child: SuraListDesigne(
                            index: filterQuranSuras[index],
                          ),
                        ),
                    separatorBuilder:
                        (context, index) => Divider(
                          thickness: 1.5,
                          color: ColorsManger.white,
                          indent: widthQuery * 0.1,
                          endIndent: widthQuery * 0.1,
                        ),
                    itemCount: filterQuranSuras.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void filterQuranSurasByNewText(String targetSura) {
    List<int> filterQuranList = [];
    for (int i = 0; i < QuranResourses.arabicQuranList.length; i++) {
      if (QuranResourses.englishQuranList[i].toLowerCase().contains(
        targetSura.toLowerCase(),
      )) {
        filterQuranList.add(i);
      } else if (QuranResourses.arabicQuranList[i].contains(targetSura)) {
        filterQuranList.add(i);
      }
      filterQuranSuras = filterQuranList;
    }
    setState(() {});
  }
}
