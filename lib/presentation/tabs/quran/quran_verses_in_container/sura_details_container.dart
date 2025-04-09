import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/assets_manger.dart';
import 'package:islami/core/colors_manger.dart';
import 'package:islami/presentation/tabs/quran/quran_resourses.dart';
import 'package:islami/presentation/tabs/quran/quran_verses_in_container/sura_content_container.dart';

class SuraDetailsContainer extends StatefulWidget {
  SuraDetailsContainer({super.key});

  @override
  State<SuraDetailsContainer> createState() => _SuraDetailsContainerState();
}

class _SuraDetailsContainerState extends State<SuraDetailsContainer> {
  late int index;
  List<String> quranVerses = [];
  late double heightQuery;
  late double widthQuery;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    index = ModalRoute.of(context)?.settings.arguments as int;
    loadSuraContent(index);
  }

  @override
  Widget build(BuildContext context) {
    heightQuery = MediaQuery.of(context).size.height;
    widthQuery = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorsManger.gold),
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          QuranResourses.englishQuranList[index],
          style: TextStyle(color: ColorsManger.gold),
        ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage(AssetsManger.quranDetailsPatternLeft),
                  ),
                  Spacer(),
                  Image(
                    image: AssetImage(AssetsManger.quranDetailsPatternRight),
                  ),
                ],
              ),
              Text(
                QuranResourses.arabicQuranList[index],
                style: TextStyle(
                  color: ColorsManger.gold,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Expanded(
            child:
                quranVerses.isEmpty
                    ? Center(
                      child: CircularProgressIndicator(
                        color: ColorsManger.gold,
                      ),
                    )
                    : ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            vertical: widthQuery * 0.01,
                            horizontal: heightQuery * 0.03,
                          ),
                          child: SuraContentContainer(
                            index: index,
                            suraContent: quranVerses[index],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: heightQuery * 0.01);
                      },
                      itemCount: quranVerses.length,
                    ),
          ),
        ],
      ),
    );
  }

  void loadSuraContent(int suraNumber) async {
    String suraContent = await rootBundle.loadString(
      "assets/quran/${suraNumber + 1}.txt",
    );
    List<String> suraLines = suraContent.trim().split("\n");
    quranVerses = suraLines;
    setState(() {});
  }
}
