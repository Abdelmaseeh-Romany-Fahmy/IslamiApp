import 'package:flutter/material.dart';
import 'package:islami2026/widgets/Home.dart';
import 'package:islami2026/widgets/SplashPage.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routName,
      routes: {
        SplashPage.routName: (_) =>  SplashPage(),
        Home.routName:(_)=>Home(),
      },
    );
  }
}
