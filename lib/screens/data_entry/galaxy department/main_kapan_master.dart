import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class MainKapanMaster extends StatefulWidget {
  const MainKapanMaster({super.key});

  @override
  State<MainKapanMaster> createState() => _MainKapanMasterState();
}

class _MainKapanMasterState extends State<MainKapanMaster> {
  int selectedIndex = 0;
  String? selectedValue;
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
            textScreen('SEED : ISSUE REC.REPORT', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 30, child: buildInputColumn2('Serial No', '1')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildInputColumn5('')),
                      SizedBox(width: 10),
                      Expanded(
                          flex: 50, child: buildInputColumn2('Barcode', 'A')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: buildInputColumn2('Main Kapan NO', '220')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn2('Rough Name', 'Zimba')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('M.Kapan Pcs', '0')),
                      SizedBox(width: 10),
                      Expanded(
                          child: buildInputColumn2('M.Kapan Weight', '102.02')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          flex: 25,
                          child: buildInputColumn2('M.Kapan Pcs', '0')),
                      SizedBox(width: 5),
                      Text('Srt'),
                      SizedBox(width: 5),
                      Expanded(flex: 25, child: buildInputColumn2('', '1')),
                      SizedBox(width: 10),
                      Expanded(
                          flex: 25, child: buildInputColumn2('Amount', '0')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 25, child: buildInputColumn2('Doller', '0')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Remark', '0')),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kapan Lock',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Y',
                                'N',
                              ],
                              initalValue: selectedValue,
                              onChange: (p0) {
                                setState(() {
                                  selectedValue = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(1, 'Insert')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(2, 'Edit')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(3, 'Delete')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(4, 'Search')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(5, 'Kapan Report')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(6, 'First')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(7, 'Last')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(8, 'Next')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(9, 'Previous')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(10, 'Exit')),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildbotton(
    int index,
    String text,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              height: 40,
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
                      text,
                      18,
                      // selectedButton == label ? Colors.white : appColors.blueColor,
                      selectedIndex == index
                          ? appColors.whiteColor
                          : appColors.primaryColor,
                      FontWeight.w600,
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
