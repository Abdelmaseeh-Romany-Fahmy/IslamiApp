import 'package:flutter/material.dart';
import 'package:islami2026/ui/appColors.dart';

class Apptheme {
static  ThemeData lightTheme =ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: Appcolors.blackLightColor,
          fontSize: 30,
          fontWeight: FontWeight.w700,

        )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme:
    BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Appcolors.meanLightColor,
      selectedItemColor:Appcolors.blackLightColor,
      unselectedItemColor: Appcolors.whiteColor,
    ),
  );
 static ThemeData darkTheme =ThemeData(
    appBarTheme: AppBarTheme(
        centerTitle: true,

        backgroundColor: Colors.transparent,

        titleTextStyle: TextStyle(
          color: Appcolors.blackLightColor,
          fontSize: 30,
          fontWeight: FontWeight.w700,

        )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme:
    BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Appcolors.deepBlueLightColor,
      selectedItemColor:Appcolors.goldLightColor,
      unselectedItemColor: Appcolors.whiteColor,
    ),
  );

}