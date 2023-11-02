import 'dart:async';
import 'package:flutter/material.dart';

import '../onboarding/onboarding_main.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  get builder => const OnboardingScreen();

  @override
  Widget build(BuildContext context) {

    Timer(const Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(
          builder: (context) =>  const OnboardingScreen() ));
    });
    return  Scaffold(
      backgroundColor: Color(0xFF074CFF),
      body:  Center(
        child: Center(
          child: Image.asset('assets/images/splash.png',
          width: 160,
          height: 163)
        ),
      ),
    );
  }
}
