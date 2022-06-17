import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import '../../screen/home_screen.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 1000,
      splash: 'asset/splash.png',
      splashIconSize: double.infinity,
      nextScreen: const HomeScreen(),
      splashTransition: SplashTransition.decoratedBoxTransition,
    );
  }
}
