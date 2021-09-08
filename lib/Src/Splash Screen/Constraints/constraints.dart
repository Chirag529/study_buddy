import 'package:flutter/material.dart';

final primaryColor = Color(0xFFCADCED);

List<BoxShadow> customShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(
      0.5,
    ),
    spreadRadius: -5,
    offset: Offset(-5, -5),
    blurRadius: 30,
  ),
  BoxShadow(
    color: Colors.blue[900]!.withOpacity(
      0.2,
    ),
    spreadRadius: 2,
    offset: Offset(7, 7),
    blurRadius: 20,
  ),
];

final kPrimaryColor = LinearGradient(
  colors: [
    Colors.deepPurple,
    Colors.pinkAccent,
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
