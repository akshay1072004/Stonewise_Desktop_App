import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class LaserRecBoilIssueReport extends StatefulWidget {
  const LaserRecBoilIssueReport({super.key});

  @override
  State<LaserRecBoilIssueReport> createState() =>
      _LaserRecBoilIssueReportState();
}

class _LaserRecBoilIssueReportState extends State<LaserRecBoilIssueReport> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedManager;
  String? selectedMain;
  String? selectedPeta;
  String? selectedSoning;

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
            textScreen('Laser Rec.Boil Issue Report', 25,
                appColors.primaryColor, FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Leaser Or Showing',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Leaser',
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
                              'Manager Name',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                '0',
                                'chs',
                                'Ravi Bhai',
                                'a',
                              ],
                              initalValue: selectedManager,
                              onChange: (p0) {
                                setState(() {
                                  selectedManager = p0;
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
                        flex: 30,
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
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildInputColumn2('', '')),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Peta Kapan No.',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'A1',
                              ],
                              initalValue: selectedPeta,
                              onChange: (p0) {
                                setState(() {
                                  selectedPeta = p0;
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
                        flex: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Soning Type',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'None',
                                'Luz Showing',
                                'Plat Showing',
                              ],
                              initalValue: selectedSoning,
                              onChange: (p0) {
                                setState(() {
                                  selectedSoning = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(flex: 25, child: buildInputColumn5('Date')),
                      Text('To',
                          style: TextStyle(color: appColors.primaryColor)),
                      Expanded(flex: 25, child: buildInputColumn5('')),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 200),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(1, 'Report')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(2, 'Cancel')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(3, 'Reset')),
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
