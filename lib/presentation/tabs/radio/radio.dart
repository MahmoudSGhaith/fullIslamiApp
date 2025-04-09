import 'package:flutter/material.dart';
import 'package:islami/core/assets_manger.dart';
import 'package:islami/core/colors_manger.dart';
import 'package:islami/presentation/tabs/radio/radio_box.dart';
import 'package:islami/presentation/tabs/radio/recieters_box.dart';

class RadioTab extends StatefulWidget {
  RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  bool radioButtonSelected = true;
  bool recitersButtonSelected = false;
  late double widthQuery;
  late double heightQuery;

  @override
  Widget build(BuildContext context) {
    widthQuery = MediaQuery.of(context).size.width;
    heightQuery = MediaQuery.of(context).size.height;
    return Expanded(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: ColorsManger.white,
                ),
                width: widthQuery * 0.8,
                height: heightQuery * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: widthQuery * 0.3,
                    height: heightQuery * 0.05,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          radioButtonSelected = true;
                          recitersButtonSelected =
                              false; // Change the state of the other button
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          radioButtonSelected
                              ? ColorsManger.gold
                              : ColorsManger.grey,
                        ),
                      ),
                      child: Text(
                        "Radio",
                        style: TextStyle(
                          color: ColorsManger.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: widthQuery * 0.4,
                    height: heightQuery * 0.05,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          recitersButtonSelected
                              ? ColorsManger.gold
                              : ColorsManger.grey,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          recitersButtonSelected = true;
                          radioButtonSelected =
                              false; // Change the state of the other button
                        });
                      },
                      child: Text(
                        "Reciters",
                        style: TextStyle(
                          color: ColorsManger.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: heightQuery * 0.02),
          Expanded(
            child: SingleChildScrollView(
              child: showRadioOrRecitersData(),
            ),
          ),

        ],
      ),
    );
  }
  Widget showRadioOrRecitersData(){
    if(radioButtonSelected){
       return Column(
        children: [
          RadioBox(
            icon1: Icons.play_arrow,
            icon2: Icons.volume_up,
            imagePath: AssetsManger.radioContainerMosque,
            textName: "Radio Ibrahim Al-Akdar",
          ),
          SizedBox(height: heightQuery * 0.015),
          RadioBox(
            icon1: Icons.pause,
            icon2: Icons.volume_off,
            imagePath: AssetsManger.containerRadioVolume,
            textName: "Radio Al-Qaria Yassen",
          ),
          SizedBox(height: heightQuery * 0.015),
          RadioBox(
            icon1: Icons.play_arrow,
            icon2: Icons.volume_up,
            imagePath: AssetsManger.radioContainerMosque,
            textName: "Radio Ahmed Al-trabulsi",
          ),
          SizedBox(height: heightQuery * 0.015),
          RadioBox(
            icon1: Icons.play_arrow,
            icon2: Icons.volume_up,
            imagePath: AssetsManger.radioContainerMosque,
            textName: "Radio Addokali Mohammad Alalim",
          ),
        ],
      );
    }
    else if(recitersButtonSelected){
      return Column(
        children: [
          RecitersBox(
            icon1: Icons.play_arrow,
            icon2: Icons.volume_up,
            imagePath: AssetsManger.radioContainerMosque,
            textName: "Ibrahim Al-Akdar",
          ),
          SizedBox(height: heightQuery * 0.015),
          RecitersBox(
            icon1: Icons.pause,
            icon2: Icons.volume_off,
            imagePath: AssetsManger.containerRadioVolume,
            textName: "Akram Alalaqmi",
          ),
          SizedBox(height: heightQuery * 0.015),
          RecitersBox(
            icon1: Icons.play_arrow,
            icon2: Icons.volume_up,
            imagePath: AssetsManger.radioContainerMosque,
            textName: "Majed Al-Enezi",
          ),
          SizedBox(height: heightQuery * 0.015),
          RecitersBox(
            icon1: Icons.play_arrow,
            icon2: Icons.volume_up,
            imagePath: AssetsManger.radioContainerMosque,
            textName: "Malik shaibat Alhamed",
          ),
        ],
      );
    }
    return Container();
  }
}
