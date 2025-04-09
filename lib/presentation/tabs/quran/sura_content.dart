import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/assets_manger.dart';
import 'package:islami/core/colors_manger.dart';
import 'package:islami/presentation/tabs/quran/quran_resourses.dart';
import 'package:islami/presentation/tabs/quran/sura_details.dart';

class SuraContent extends StatefulWidget {
  const SuraContent({super.key});

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  String suraDetails = "";
  late int index;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    index = ModalRoute.of(context)?.settings.arguments as int;
    loadSuraContent(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorsManger.gold),
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          QuranResourses.arabicQuranList[index],
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
                  Image(image: AssetImage(AssetsManger.quranDetailsPatternLeft)),
                  Spacer(),
                  Transform.rotate(
                    angle: 360,
                    child: Image(
                      image: AssetImage(AssetsManger.quranDetailsPatternLeft),
                    ),
                  ),
                ],
              ),
              Text(
                QuranResourses.englishQuranList[index],
                style: TextStyle(
                  color: ColorsManger.gold,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Expanded(
            child:
                suraDetails.isEmpty
                    ? Center(
                      child: CircularProgressIndicator(
                        color: ColorsManger.gold,
                      ),
                    )
                    : SuraDetails(suraContent: suraDetails),
          ),
        ],
      ),
    );
  }

  void loadSuraContent(int suraNumber) async{
    String suraContent = await rootBundle.loadString(
      "assets/quran/${suraNumber + 1}.txt",
    );
   List <String> suraLines = suraContent.trim().split("\n");
   for(int i = 0 ; i < suraLines.length ; i++){
     suraLines[i] += "[${i + 1}]";
   }
   suraDetails = suraLines.join();
   setState(() {

   });
  }
}
