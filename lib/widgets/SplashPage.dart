import 'package:flutter/material.dart';
import 'package:islami2026/widgets/Home.dart';

class SplashPage extends StatefulWidget {
  static String routName ="SplashPage";
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Home.routName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          'assets/image/Spalsh.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
