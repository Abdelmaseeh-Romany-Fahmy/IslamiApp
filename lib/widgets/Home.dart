import 'package:flutter/material.dart';
import 'package:islami2026/widgets/tabs/hadeth.dart';
import 'package:islami2026/widgets/tabs/quran.dart';
import 'package:islami2026/widgets/tabs/radio.dart';
import 'package:islami2026/widgets/tabs/sebha.dart';
import 'package:islami2026/widgets/tabs/settings.dart';

import '../ui/assets_image.dart';

class Home extends StatefulWidget {
  static String routName ="Home";


  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index=0;
  List<Widget>tabsList =[quranTab(),HadethTab(),sebhaTab(),RadioTab(),SettingsTab()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(Assets_Image.default_bg_Light),fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("إسلامي"),
        ),
        body: tabsList[index],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap:(value) {
              index=value;
              setState(() {

              });
            } ,
            items: [
          BottomNavigationBarItem(icon:
          ImageIcon(AssetImage(Assets_Image.icon_quran)),label: "quran"),
          BottomNavigationBarItem(icon:
          ImageIcon(AssetImage(Assets_Image.icon_hadeth)),label: "hadeth"),
          BottomNavigationBarItem(icon:
          ImageIcon(AssetImage(Assets_Image.icon_sebha)),label: "sebha"),
          BottomNavigationBarItem(icon:
          ImageIcon(AssetImage(Assets_Image.icon_radio)),label: "radio"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),
        ]),

      ),
    );
  }
}
