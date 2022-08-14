import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pooria50/ui/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image(
      image: AssetImage('asset/splash.jpg'),
      fit: BoxFit.fitHeight,
    ));
  }
}
