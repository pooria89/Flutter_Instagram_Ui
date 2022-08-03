import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import '../ui/auth/register_screen.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        duration: 1000,
        splash: 'asset/splash.png',
        splashIconSize: double.maxFinite,
        nextScreen: const RegisterScreen(),
        splashTransition: SplashTransition.decoratedBoxTransition,
      ),
    );
  }
}
