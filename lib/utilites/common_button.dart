import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/text_screen.dart';

GestureDetector commonButton(
  String text, {
  void Function()? onPressed,
  Color? color,
  Color? textColor,
  double? width,
  double? height,
  StateSetter? setState,
  String? selectedButton,
  String? label,
  double? fontSize ,
}) {
  return GestureDetector(
    onTap: () {
      setState?.call(() {
        selectedButton = label;
      });

      if (onPressed != null) onPressed();
    },
    child: Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      height: height ?? 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: color,
        border: Border.all(color: appColors.primaryColor),
      ),
      child: Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: textScreen(
              text,
              fontSize ?? 18,
              // selectedButton == label ? Colors.white : appColors.blueColor,
              textColor ?? Colors.black,
              FontWeight.w500,
              TextAlign.center),
        ),
      ),
    ),
  );
}

GestureDetector commonButton2(
  String text, {
  void Function()? onPressed,
  Color? color,
  double? width,
  double? height,
  StateSetter? setState,
  String? selectedButton,
  String? label,
  double? fontSize,
}) {
  return GestureDetector(
    onTap: () {
      setState?.call(() {
        selectedButton = label;
      });

      if (onPressed != null) onPressed();
    },
    child: Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      height: height ?? 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: appColors.primaryColor),
      ),
      child: Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: textScreen(
              text,
              18,
              selectedButton == label ? appColors.primaryColor : Colors.black,
              FontWeight.w500,
              TextAlign.center),
        ),
      ),
    ),
  );
}

GestureDetector commonButton3(
  String text, {
  void Function()? onPressed,
  Color? color,
  Color? textColor,
  double? width,
  double? height,
  StateSetter? setState,
  String? selectedButton,
  String? label,
  double? fontSize,
}) {
  return GestureDetector(
    onTap: () {
      setState?.call(() {
        selectedButton = label;
      });

      if (onPressed != null) onPressed();
    },
    child: Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      height: height ?? 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: color,
        border: Border.all(color: appColors.borderColor),
      ),
      child: Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: textScreen(
              text,
              11,
              // selectedButton == label ? Colors.white : appColors.blueColor,
              textColor ?? Colors.black,
              FontWeight.w500,
              TextAlign.center),
        ),
      ),
    ),
  );
}

GestureDetector commonButton4(
  String text, {
  void Function()? onPressed,
  Color? color,
  Color? textColor,
  double? width,
  double? height,
  StateSetter? setState,
  String? selectedButton,
  String? label,
  double? fontSize,
}) {
  return GestureDetector(
    onTap: () {
      setState?.call(() {
        selectedButton = label;
      });

      if (onPressed != null) onPressed();
    },
    child: Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      height: height ?? 40,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: appColors.primaryColor),
      ),
      child: Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: textScreen(
              text,
              fontSize ?? 18,
              // selectedButton == label ? Colors.white : appColors.blueColor,
              textColor ?? Colors.black,
              FontWeight.w500,
              TextAlign.center),
        ),
      ),
    ),
  );
}
