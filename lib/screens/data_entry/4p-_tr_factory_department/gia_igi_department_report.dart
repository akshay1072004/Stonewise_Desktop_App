import 'package:flutter/material.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/text_screen.dart';

class GiaIgiDepartmentReport extends StatefulWidget {
  const GiaIgiDepartmentReport({super.key});

  @override
  State<GiaIgiDepartmentReport> createState() => _GiaIgiDepartmentReportState();
}

class _GiaIgiDepartmentReportState extends State<GiaIgiDepartmentReport> {
  int selectedIndex = 0;
  bool isChecked = false;
  String? selectedValue;
  String? selectedValue1;
  String? selectedLOCATION;
  String? selectedProcess;
  String? selectedValue2;
  String? selectedValue3;
  String? selectedEmployee;

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
            textScreen('GIA/IGI : Issue - Recevive Report', 25,
                appColors.primaryColor, FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
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
                                  'ISSUE',
                                  'RECIVED',
                                  'PENDING',
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
                                  'DETAIL',
                                  'SUMMARY',
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
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'LOCATION',
                                style: TextStyle(
                                  color: appColors.primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 6),
                              CommonDropdownButton(
                                items: [
                                  'A',
                                  'G',
                                  'Z49-',
                                ],
                                initalValue: selectedLOCATION,
                                onChange: (p0) {
                                  setState(() {
                                    selectedLOCATION = p0;
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
                                'Process Name',
                                style: TextStyle(
                                  color: appColors.primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 6),
                              CommonDropdownButton(
                                items: [
                                  'Galaxy',
                                  'S',
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
                        SizedBox(width: 10),
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
                                  'KACHA',
                                  'NONE',
                                ],
                                initalValue: selectedValue2,
                                onChange: (p0) {
                                  setState(() {
                                    selectedValue2 = p0;
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
                                  'MAIN',
                                  'PART',
                                ],
                                initalValue: selectedValue3,
                                onChange: (p0) {
                                  setState(() {
                                    selectedValue3 = p0;
                                  });
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 660),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Employee Nmae',
                                  style: TextStyle(
                                    color: appColors.primaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                CommonDropdownButton(
                                  items: [
                                    'VishalBhai',
                                    'ghd',
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
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(child: buildInputColumn2('Main Kapan No', '')),
                        SizedBox(width: 10),
                        Expanded(child: buildInputColumn2('Kapan No', '')),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 270,
                          width: 415,
                          decoration: BoxDecoration(
                              border: Border.all(color: appColors.borderColor)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                                Text('z69'),
                              ],
                            ),
                          ),
                        )),
                        SizedBox(width: 10),
                        Expanded(
                            child: Container(
                          height: 270,
                          width: 415,
                          decoration: BoxDecoration(
                              border: Border.all(color: appColors.borderColor)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                                Text('z69'),
                              ],
                            ),
                          ),
                        )),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 300),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(flex: 25, child: buildInputColumn5('Date')),
                          Text('To',
                              style: TextStyle(
                                  color: appColors.primaryColor, fontSize: 18)),
                          Expanded(flex: 25, child: buildInputColumn5('')),
                        ],
                      ),
                    ),
                    Divider(thickness: 1, color: appColors.primaryColor),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 150),
                      child: Row(
                        children: [
                          Expanded(child: buildbotton(1, 'Report')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(2, 'Cancel')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(3, 'Reset')),
                          SizedBox(width: 5),
                          Expanded(
                              child: buildbotton(4, 'Refresh main/Sub Report')),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
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
