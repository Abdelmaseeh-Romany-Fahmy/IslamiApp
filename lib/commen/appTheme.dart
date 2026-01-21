import 'package:flutter/material.dart';
import 'package:islami2026/ui/appColors.dart';

class Apptheme {
static  ThemeData lightTheme =ThemeData(
  colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Appcolors.meanLightColor,
      onPrimary:Appcolors.whiteColor ,
      secondary: Appcolors.blackLightColor,
      onSecondary: Appcolors.whiteColor,
      error: Colors.red,
      onError: Appcolors.whiteColor,
      surface: Appcolors.whiteColor,
      onSurface: Appcolors.whiteColor),

  dividerTheme:DividerThemeData(color: Appcolors.meanLightColor) ,

  textTheme: TextTheme(
    titleMedium: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w400,
      color: Appcolors.blackLightColor
    )
  ),
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
   dividerTheme:DividerThemeData(color: Appcolors.goldLightColor) ,

   colorScheme: ColorScheme(
       brightness: Brightness.dark,
       primary: Appcolors.deepBlueLightColor,
       onPrimary:Appcolors.whiteColor ,
       secondary: Appcolors.whiteColor,
       onSecondary: Appcolors.whiteColor,
       error: Appcolors.whiteColor,
       onError: Appcolors.whiteColor,
       surface: Appcolors.whiteColor,
       onSurface: Appcolors.whiteColor),
   textTheme: TextTheme(
       titleMedium: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.w400,
           color: Appcolors.whiteColor
       )
   ),


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