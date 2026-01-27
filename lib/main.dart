import 'package:flutter/material.dart';
import 'package:islami2026/commen/appTheme.dart';
import 'package:islami2026/widgets/Home.dart';
import 'package:islami2026/widgets/SplashPage.dart';
import 'package:islami2026/widgets/screens/hadethDetails.dart';
import 'package:islami2026/widgets/screens/quranDetails.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Apptheme.lightTheme,
      darkTheme:Apptheme.darkTheme ,
      themeMode:ThemeMode.light ,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routName,
      routes: {
        SplashPage.routName: (_) =>  SplashPage(),
        Home.routName:(_)=>Home(),
        Qurandetails.routName:(_)=>Qurandetails(),
        HadethDetails.routName:(_)=>HadethDetails(),
      },
    );
  }
}
