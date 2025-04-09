import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/assets_manger.dart';
import 'package:islami/core/colors_manger.dart';
import 'package:islami/presentation/tabs/hadith/hadeth_model.dart';

class HadithItem extends StatefulWidget {
  int hadethNumber;

  HadithItem({super.key, required this.hadethNumber});

  @override
  State<HadithItem> createState() => _HadithItemState();
}

class _HadithItemState extends State<HadithItem> {
  late double widthQuery;

  late double heightQuery;

  HadethModel? hadethModel;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    loadHadethContent(widget.hadethNumber);
  }

  @override
  Widget build(BuildContext context) {
    widthQuery = MediaQuery.of(context).size.width;
    heightQuery = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: heightQuery * 0.001 ),
      height: heightQuery * 0.6,
      decoration: BoxDecoration(
        color: ColorsManger.gold,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(AssetsManger.hadithCardBackGround),
        ),
      ),
      child:
          hadethModel == null
              ? Center(
                child: CircularProgressIndicator(color: ColorsManger.gold),
              )
              : Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(
                              AssetsManger.hadethTapDesigneLeft,
                            ),
                          ),
                          Spacer(),
                          Image(
                            image: AssetImage(
                              AssetsManger.hadethTapDesigneRight,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        textDirection: TextDirection.rtl,
                        hadethModel?.hadethTitle ?? "",
                        style: TextStyle(
                          color: ColorsManger.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: heightQuery * 0.01),
                        child: Text(
                          textDirection: TextDirection.rtl,
                          hadethModel?.hadethContent ?? "",
                          style: TextStyle(
                            color: ColorsManger.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Image(image: AssetImage(AssetsManger.hadithMosque))
                ],
              ),
    );
  }

  void loadHadethContent(int hadethNumber)async{
    String fileContent = await rootBundle.loadString("assets/hadeth/h$hadethNumber.txt");
    int hadethIndex = fileContent.indexOf("\n");
    String hadethTitle = fileContent.substring(0 , hadethIndex);
    String hadethContent = fileContent.substring(hadethIndex + 1);
    hadethModel = HadethModel(hadethTitle: hadethTitle , hadethContent: hadethContent);
    setState(() {

    });
  }
}
