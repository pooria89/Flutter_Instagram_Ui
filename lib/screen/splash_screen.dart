import 'package:flutter/material.dart';

import '../util/authentication/splashWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cafegardi_tehran',
      home: SplashWidget(),
    );
  }
}
