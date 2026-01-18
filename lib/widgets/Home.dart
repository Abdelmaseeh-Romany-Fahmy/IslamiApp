import 'package:flutter/material.dart';

import '../ui/assets_image.dart';

class Home extends StatelessWidget {
  static String routName ="Home";

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(Assets_Image.default_bg_Light),fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xffB7935F),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
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
