import 'package:flutter/material.dart';
import 'pages/on_boarding_page.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);
  static final String title = "Onboarding Screen";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showPerformanceOverlay: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: OnBoardingPage(),
    );
  }
}
