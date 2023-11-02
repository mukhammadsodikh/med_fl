import 'package:flutter/material.dart';
import 'package:med_fl/screens/main%20screens/home/home_screen.dart';
import 'package:med_fl/screens/main%20screens/home/main_home_screen.dart';
import 'package:med_fl/screens/main%20screens/splash_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SplashView()
    );
  }
}
