import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/common_textfild.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class PlannarCheckerScreen extends StatefulWidget {
  const PlannarCheckerScreen({super.key});

  @override
  State<PlannarCheckerScreen> createState() => _PlannarCheckerScreenState();
}

class _PlannarCheckerScreenState extends State<PlannarCheckerScreen> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedPlanner;

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  textScreen(
                      'Planner, Checker Master',
                      25,
                      appColors.primaryColor,
                      FontWeight.w600,
                      TextAlign.center),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Serial No.')),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Department',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'SARAIN',
                                'GALAXY',
                                'MANGNUS',
                                'SYMBOL',
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
                      Expanded(child: buildInputColumn('Chacker Name')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn('Tabel No/Name')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          flex: 20,
                          child: buildInputColumn('Employee No/Name')),
                      SizedBox(width: 2),
                      Expanded(
                          flex: 30,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 23),
                            child: buildTextField(''),
                          )),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Checker/planner',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'CHECKER',
                                'PLANNER',
                              ],
                              initalValue: selectedPlanner,
                              onChange: (p0) {
                                setState(() {
                                  selectedPlanner = p0;
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
                      Expanded(child: buildInputColumn('Mobile Number')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn('Salary')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Month Day')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn('Employee Password')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 100, right: 100),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(0, 'Insert')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(1, 'Edit')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(2, 'Delete')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(3, 'Search')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(4, 'Refresh Emp. Name')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 100, right: 100),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(5, 'First')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(6, 'Last')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(7, 'Next')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(8, 'Previous')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(9, 'Exit')),
                      ],
                    ),
                  ),
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
