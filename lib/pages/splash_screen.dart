import 'package:demoapp/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen.withScreenFunction(
      backgroundColor: Colors.black,
      splash: 'assets/images/splash.png',
      screenFunction: () async {
        return HomePage();
      },
      splashTransition: SplashTransition.scaleTransition,
      splashIconSize: 300,
      duration: 1000,
    );
  }
}
