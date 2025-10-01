import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class EmployeeMasterrrr extends StatefulWidget {
  const EmployeeMasterrrr({super.key});

  @override
  State<EmployeeMasterrrr> createState() => _EmployeeMasterrrrState();
}

class _EmployeeMasterrrrState extends State<EmployeeMasterrrr> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedDepartment;
  String? selectedEmployee;

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
                      Expanded(child: buildInputColumn2('Serial No.', '1')),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Department Name',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Claving Department',
                                'Galaxy Department',
                                'Sarin Department',
                                'LS Department',
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
                      Expanded(
                        flex: 30,
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
                                'SARIN',
                                'GALAXY',
                                'MANGNUS',
                                'SYMBOL',
                              ],
                              initalValue: selectedDepartment,
                              onChange: (p0) {
                                setState(() {
                                  selectedDepartment = p0;
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
                          flex: 30,
                          child:
                              buildInputColumn2('Employee Name', 'VishalBhai')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildInputColumn2('', '1')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Address', '0')),
                      SizedBox(width: 10),
                      Expanded(
                          child: buildInputColumn2('Mobile No.', '7894563021')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          flex: 50,
                          child: buildInputColumn2('Salary', '30000')),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 30,
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
                              initalValue: selectedEmployee,
                              onChange: (p0) {
                                setState(() {
                                  selectedEmployee = p0;
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
                    padding: const EdgeInsets.symmetric(horizontal: 50),
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
                                    index: 3, text: 'Search Dep', width: 100),
                                SizedBox(width: 10),
                                buildbotton(
                                    index: 4, text: 'Search Emp', width: 100),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                buildbotton(
                                    index: 5, text: 'First', width: 100),
                                SizedBox(width: 10),
                                buildbotton(index: 6, text: 'Last', width: 100),
                                SizedBox(width: 10),
                                buildbotton(index: 7, text: 'Next', width: 100),
                                SizedBox(width: 10),
                                buildbotton(
                                    index: 8, text: 'Previous', width: 100),
                                SizedBox(width: 10),
                                buildbotton(
                                    index: 9, text: 'Search Ecoad', width: 100),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        buildbotton(
                            index: 10, text: "Exit", width: 100, height: 85)
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
                  child: Padding(
                    padding: const EdgeInsets.all(10),
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
          ),
        ],
      ),
    );
  }
}
