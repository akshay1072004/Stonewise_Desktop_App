import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class ProcessMaster extends StatefulWidget {
  const ProcessMaster({super.key});

  @override
  State<ProcessMaster> createState() => _ProcessMasterState();
}

class _ProcessMasterState extends State<ProcessMaster> {
  int selectedIndex = 0;
  String? selectedValue;
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
            textScreen('Process Master', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Serial No', '2')),
                      SizedBox(width: 5),
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
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Process No', '2')),
                      SizedBox(width: 5),
                      Expanded(
                          child: buildInputColumn2('Process Name', 'Galaxy')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Loss Alert%', '3')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: Color(0xffF8FAFF),
                        border: Border.all(color: appColors.borderColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 500, 0),
                        child: Table(
                          border: TableBorder.all(color: appColors.tabelcolor),
                          columnWidths: {
                            0: FlexColumnWidth(0.2),
                            1: FlexColumnWidth(0.4),
                            2: FlexColumnWidth(0.4),
                          },
                          children: [
                            TableRow(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff),
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff),
                                      )),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('')),
                                Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('')),
                                Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('')),
                              ],
                            ),
                          ],
                        ),
                      ),
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
