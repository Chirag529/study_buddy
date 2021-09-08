import 'package:flutter/material.dart';
import 'package:study_buddy/Src/Login/login.dart';

import 'Src/Splash Screen/Onboarding_Screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const OnBoarding(),
        '/second': (context) => const LoginPage(),
        '/third': (context) => const MyApp(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Title...!",
        ),
      ),
      body: Center(
        child: Text(
          "This Is Body....",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
