import 'package:flutter/material.dart';

class Appcolor {
  static final Appcolor _instance = Appcolor._internal();

  factory Appcolor() => _instance;

  Appcolor._internal();

  final Color primaryColor = Color(0xff255CEA);
  final Color secondaryColor = Color(0xffE8EEFF);
  final Color textColor = Color(0xff8B8B8B);
  final Color borderColor = Color(0xffD8D8D8);
  final Color whiteColor = Colors.white;
  final Color blackColor = Colors.black;
  final Color blueColor = Colors.blue;
  final Color redColor = Color(0xffFF0F0F);
  final Color greenColor = Color(0xff128300);
  final Color balkColor = Color(0xff515151);
  final Color tabelcolor = Color(0xffE2EAFF);
  final Color outlineColor = Color(0xffCBD9FF);
}

Appcolor appColors = Appcolor();
