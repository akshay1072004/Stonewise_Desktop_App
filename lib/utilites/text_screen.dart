import 'package:flutter/material.dart';

Widget textScreen(
  String text,
  double fontSize,
  Color color,
  FontWeight fontWeight,
  TextAlign textAlign,
) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    ),
    textAlign: textAlign,
  );
}

Widget textScreen1(
  String text,
  double fontSize,
  Color color,
  FontWeight fontWeight,
) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}
