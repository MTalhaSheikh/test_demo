import 'package:flutter/material.dart';

class Constants{

  static final primaryColor = Colors.lightBlue[200];
  static final primaryButtonStyle = ElevatedButton.styleFrom(
    primary: primaryColor,
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
    textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
  );

  static final boldTextStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w800,
      color: primaryColor);
}