import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class EmployeMonthlyEntry extends StatefulWidget {
  const EmployeMonthlyEntry({super.key});

  @override
  State<EmployeMonthlyEntry> createState() => _EmployeMonthlyEntryState();
}

class _EmployeMonthlyEntryState extends State<EmployeMonthlyEntry> {
  int selectedIndex = 0;
  String? selectedValue;

  String? selectedValue1;
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
            textScreen('Employee Monthly Entry', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: buildInputColumn2('NO', '1')),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'JAN',
                                'FEB',
                                'MAR',
                                'APR',
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
                      Expanded(child: buildInputColumn5('Date')),
                      SizedBox(width: 5),
                      Text(
                        'TO',
                        style: TextStyle(color: appColors.primaryColor),
                      ),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn5('')),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 50,
                          child: buildInputColumn2(
                              'Department Name', 'Gelexy Department')),
                      SizedBox(width: 10),
                      Expanded(
                          flex: 20,
                          child: buildInputColumn2('Employee Name', 'fgrt')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'ASHISHBHAI',
                                'B S PATEL',
                                'GAUTAM BHAI',
                                'GHANSHYAMBHAI',
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
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Fix Salary', 'yg')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Month Day', 'bnh')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn2('Bank Salary', 'bnh')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Month Day', 'bnh')),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('pcs.', 'yg')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('price', 'bnh')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn2('PF', 'bnh')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('ESIC', 'bnh')),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Amount', 'yg')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Add Amt', 'bnh')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn2('PT', 'bnh')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Add Amt', 'bnh')),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Less Amount', 'yg')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Salay Amount', 'bnh')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn2('lass Amt', 'bnh')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Ban Amount', 'bnh')),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Remark', 'vfvfd')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: buildbotton(1, 'insert')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(2, 'Edit')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(3, 'Delete')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(4, 'search Dep')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(5, 'Print')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
