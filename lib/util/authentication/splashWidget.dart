import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:pooria50/screen/auth/login_screen.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 1000,
      splash: 'asset/3.jpg',
      splashIconSize: double.maxFinite,
      nextScreen: const LoginScreen(),
      splashTransition: SplashTransition.decoratedBoxTransition,
    );
  }
}
