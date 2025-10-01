import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class ClvEmployeeMaster extends StatefulWidget {
  const ClvEmployeeMaster({super.key});

  @override
  State<ClvEmployeeMaster> createState() => _ClvEmployeeMasterState();
}

class _ClvEmployeeMasterState extends State<ClvEmployeeMaster> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedTabel;
  String? selectedParty;
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
            textScreen('Process Employee Details', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tabel Manager Name',
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
                              initalValue: selectedTabel,
                              onChange: (p0) {
                                setState(() {
                                  selectedTabel = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn2('', 'gefrty')),
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
                              'Party Name',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'a',
                              ],
                              initalValue: selectedParty,
                              onChange: (p0) {
                                setState(() {
                                  selectedParty = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn2('Employee No', '4')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child:
                              buildInputColumn2('Employee Name', 'Smit bhai')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn2('', 'cdd')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Salary', '203698')),
                      SizedBox(width: 10),
                      Expanded(
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
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 435),
                    child: Row(
                      children: [
                        Expanded(
                            child:
                                buildInputColumn2('Contact No.', '789541236')),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
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
