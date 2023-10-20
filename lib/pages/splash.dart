import 'dart:async';
import 'package:flutter/material.dart';

import '../layout/home_layout.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash_Screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
          () {
        Navigator.pushReplacementNamed(context, HomeLayout.routeName);
      },
    );
    var mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: Image.asset(
        "assets/images/default_bg.png",
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}