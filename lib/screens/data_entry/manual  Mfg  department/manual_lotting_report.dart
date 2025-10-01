import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class ManualLottingReport extends StatefulWidget {
  const ManualLottingReport({super.key});

  @override
  State<ManualLottingReport> createState() => _ManualLottingReportState();
}

class _ManualLottingReportState extends State<ManualLottingReport> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedValue1;
  String? selectedProcess;
  String? selectedProcess1;
  String? selectedMain;
  String? selectedKapan;

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
            textScreen('Manual Lotting Report', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Select Shape',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Round',
                                'Singel',
                                'Choki',
                                'Princess',
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
                      SizedBox(width: 10),
                      Expanded(
                        flex: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Select Any One',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Lotting Report',
                                'Quality Wise Report',
                                'Quality Wise Polished Report',
                              ],
                              initalValue: selectedValue1,
                              onChange: (p0) {
                                setState(() {
                                  selectedValue1 = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Process Type',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Fresh',
                                'ReLotting',
                                'ReLotting 1',
                              ],
                              initalValue: selectedProcess,
                              onChange: (p0) {
                                setState(() {
                                  selectedProcess = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Select  Process',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Fresh',
                                'ReLotting',
                                'ReLotting 1',
                              ],
                              initalValue: selectedProcess1,
                              onChange: (p0) {
                                setState(() {
                                  selectedProcess1 = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Main Kapan No.',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'z69',
                              ],
                              initalValue: selectedMain,
                              onChange: (p0) {
                                setState(() {
                                  selectedMain = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kapan No.',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'z69',
                              ],
                              initalValue: selectedKapan,
                              onChange: (p0) {
                                setState(() {
                                  selectedKapan = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(flex: 24, child: buildInputColumn5('Date')),
                      Text('To',
                          style: TextStyle(
                              color: appColors.primaryColor, fontSize: 16)),
                      Expanded(flex: 24, child: buildInputColumn5('')),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 250),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(1, 'Refresh')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(2, 'Cancel')),
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
