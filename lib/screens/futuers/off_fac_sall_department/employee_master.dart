import 'package:flutter/material.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/text_screen.dart';

class EmployeeMaster extends StatefulWidget {
  const EmployeeMaster({super.key});

  @override
  State<EmployeeMaster> createState() => _EmployeeMasterState();
}

class _EmployeeMasterState extends State<EmployeeMaster> {
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
            textScreen('Employee Master', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('joing Date')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Department Name')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Manager Name')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Manager Name 1')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          flex: 15,
                          child: buildInputColumn3('Employee No/Name')),
                      SizedBox(width: 5),
                      Expanded(flex: 35, child: buildInputColumn3('')),
                      SizedBox(width: 5),
                      Expanded(flex: 50, child: buildInputColumn3('Adress')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(flex: 25, child: buildInputColumn('Mobile No')),
                      SizedBox(width: 5),
                      Expanded(flex: 25, child: buildInputColumn('')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 50, child: buildInputColumn('Adharr Card No.')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Pan Card No.')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Fix Day')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Bank Name')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Branch Name')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(flex: 20, child: buildInputColumn('A/C No')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildInputColumn('IFSC No')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 20, child: buildInputColumn5('Resign  Date')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Employee Lock',
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
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(flex: 25, child: buildInputColumn('Salary')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 25, child: buildInputColumn('Bank Salary')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 25, child: buildInputColumn5('Birth Date')),
                      SizedBox(width: 5),
                      Expanded(flex: 25, child: buildInputColumn('Remark')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        Expanded(child: buildbotton(5, 'Search Man')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(6, 'Report')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: buildbotton(7, 'First')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(8, 'Last')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(9, 'Next')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(10, 'Previous')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(11, 'Search Emp')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(12, 'Exit')),
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
