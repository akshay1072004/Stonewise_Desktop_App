import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/text_screen.dart';

class EmployeePaymentEntry extends StatefulWidget {
  const EmployeePaymentEntry({super.key});

  @override
  State<EmployeePaymentEntry> createState() => _EmployeePaymentEntryState();
}

class _EmployeePaymentEntryState extends State<EmployeePaymentEntry> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CommonDialog(
        child: Column(
          children: [
            titlebar(
              () {
                Navigator.pop(context);
              },
            ),
            textScreen('Employee Payment Entry', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('No', '1')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn5('Date')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: buildInputColumn2(
                              'Department Name', 'Galaxy Department')),
                      SizedBox(width: 5),
                      Expanded(
                          child: buildInputColumn2('Manager Name', 'fgegt')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Party Name', 'a')),
                      SizedBox(width: 5),
                      Expanded(
                          child: buildInputColumn2('Total  Amount', 'terg')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Remark', 'fesdf')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Amount', 'frdg')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 150),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                buildbotton(
                                    index: 0, text: 'Insert', width: 100),
                                SizedBox(width: 10),
                                buildbotton(index: 1, text: 'Edit', width: 100),
                                SizedBox(width: 10),
                                buildbotton(
                                    index: 2, text: 'Delete', width: 100),
                                SizedBox(width: 10),
                                buildbotton(
                                    index: 3, text: 'Search', width: 100),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                buildbotton(
                                    index: 4, text: 'First', width: 100),
                                SizedBox(width: 10),
                                buildbotton(index: 5, text: 'Last', width: 100),
                                SizedBox(width: 10),
                                buildbotton(index: 6, text: 'Next', width: 100),
                                SizedBox(width: 10),
                                buildbotton(
                                    index: 7, text: 'Previous', width: 100),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        buildbotton(
                            index: 8, text: "Exit", width: 100, height: 85)
                      ],
                    ),
                  ),
                  SizedBox(height: 10)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildbotton(
      {int? index, String? text, double? width, double? height}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index!;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              width: width,
              // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              height: height ?? 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: selectedIndex == index
                    ? appColors.primaryColor
                    : Colors.transparent,
                border: Border.all(color: appColors.primaryColor),
              ),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: textScreen(
                      text!,
                      18,
                      // selectedButton == label ? Colors.white : appColors.blueColor,
                      selectedIndex == index
                          ? appColors.whiteColor
                          : appColors.primaryColor,
                      FontWeight.w500,
                      TextAlign.center),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
