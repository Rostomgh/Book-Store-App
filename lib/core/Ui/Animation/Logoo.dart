import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:book_store/core/Theme/AppAssets.dart';
import 'package:book_store/features/GetStartedScreen/GetStartedScreen.dart';
import 'package:flutter/material.dart';

class LogoP extends StatefulWidget {
  const LogoP({super.key});

  @override
  State<LogoP> createState() => _LogoPState();
}

class _LogoPState extends State<LogoP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
          splashTransition: SplashTransition.fadeTransition,
          splash: Image.asset(
            AppAssets.logo,
            width: 500,
            height:500,
          ),
          nextScreen: const GetStartedP(),
        ),
      ),
    );
  }
}
