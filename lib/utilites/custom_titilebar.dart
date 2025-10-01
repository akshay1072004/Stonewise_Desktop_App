import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/text_screen.dart';

Widget titlebar(void Function()? onTap) {
  return Column(
    children: [
      Container(
        width: double.infinity,
        height: 30,
        decoration: BoxDecoration(
          color: appColors.primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              textScreen('TheWebHub Technology....', 13, appColors.whiteColor,
                  FontWeight.w500, TextAlign.left),
              Spacer(),
              GestureDetector(
                  onTap: onTap,
                  child: SvgPicture.asset('assets/svg/minemize.svg')),
              SizedBox(width: 20),
              GestureDetector(
                  onTap: onTap,
                  child: SvgPicture.asset('assets/svg/meximize.svg')),
              SizedBox(width: 20),
              GestureDetector(
                  onTap: onTap,
                  child: SvgPicture.asset('assets/svg/closesss.svg')),
            ],
          ),
        ),
      ),
    ],
  );
}
