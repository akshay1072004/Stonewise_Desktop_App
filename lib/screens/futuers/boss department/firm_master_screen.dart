import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/common_textfild.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/text_screen.dart';

class FirmMasterScreen extends StatefulWidget {
  const FirmMasterScreen({super.key});

  @override
  State<FirmMasterScreen> createState() => _FirmMasterScreenState();
}

class _FirmMasterScreenState extends State<FirmMasterScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CommonDialog(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            titlebar(
              () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  textScreen('Firm Master', 25, appColors.primaryColor,
                      FontWeight.w600, TextAlign.center),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Serial No.')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn('Bank Name')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Firm Name')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textScreen1('Address', 16, appColors.primaryColor,
                              FontWeight.w500),
                          buildTextField1('Address', maxLines: 3),
                        ],
                      )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('A/C No.')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn('PAN No.')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('ISFC Coad')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn('State/Coad')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Mobile No.')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn('GSTIN No.')),
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
                  )
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
