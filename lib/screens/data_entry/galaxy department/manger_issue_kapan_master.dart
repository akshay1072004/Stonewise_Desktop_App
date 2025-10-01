import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class MangerIssueKapanMaster extends StatefulWidget {
  const MangerIssueKapanMaster({super.key});

  @override
  State<MangerIssueKapanMaster> createState() => _MangerIssueKapanMasterState();
}

class _MangerIssueKapanMasterState extends State<MangerIssueKapanMaster> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedValue1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CommonDialog(
        width: 1000,
        child: Column(
          children: [
            titlebar(
              () {
                Navigator.pop(context);
              },
            ),
            textScreen('Manager Issue Kapan Master', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Serial No', '1')),
                      SizedBox(width: 10),
                      Expanded(
                          child: buildInputColumn2('Main Kapan No.', 'z50')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Barcoad Serise', 'A')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn2('Rough No', 'Zimba')),
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
                                'Anil',
                                'Ankit',
                                'Annu',
                                'Ashok',
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
                          flex: 50,
                          child: buildInputColumn2('Kapan No', 'z50')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(flex: 50, child: buildInputColumn5('Date')),
                      SizedBox(width: 10),
                      Expanded(flex: 20, child: buildInputColumn5('Date')),
                      SizedBox(width: 3),
                      Expanded(flex: 30, child: buildInputColumn5('')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          flex: 30,
                          child: buildInputColumn2('Kapan Weight', '102.35')),
                      SizedBox(width: 3),
                      Expanded(flex: 20, child: buildInputColumn2('Pcs', '1')),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 50,
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
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: buildInputColumn2('Aapel Weight', '102.35')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn2('Utarel Weight', '1')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 495),
                    child: Row(
                      children: [
                        Expanded(
                            child:
                                buildInputColumn2('Kapan Alert Remark', '1')),
                      ],
                    ),
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
                        Expanded(child: buildbotton(4, 'Search Kap')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(5, 'Search MKap')),
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
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(11, 'Kapan Report')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(12, 'Manual Kapan Report')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(13, 'Galaxy Kapan Report')),
                        SizedBox(width: 5),
                        Expanded(
                            child: buildbotton(14, 'Glx Kapan Stock Report')),
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
