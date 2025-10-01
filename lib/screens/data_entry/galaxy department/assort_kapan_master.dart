import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class AssortKapanMaster extends StatefulWidget {
  const AssortKapanMaster({super.key});

  @override
  State<AssortKapanMaster> createState() => _AssortKapanMasterState();
}

class _AssortKapanMasterState extends State<AssortKapanMaster> {
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
            textScreen('Kapan Assort Master', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Serial No', '3')),
                      SizedBox(width: 5),
                      Expanded(
                          child: buildInputColumn2('Main Kapan No.', 'z50')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Rough Name', 'Zimba')),
                      SizedBox(width: 5),
                      Expanded(
                          child: buildInputColumn2('Baarcoad Series', 'F')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn5('Date')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Stock', '102.35')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        flex: 20,
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
                                'Loss',
                                'Sale',
                                'Manufacture',
                                'Cent Wise Summery report',
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
                      Expanded(
                          flex: 20,
                          child: buildInputColumn2('Assort item Name', '.')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10,
                          child: buildInputColumn2('Kapan No', 'z50')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn2('Pcs', '1')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10,
                          child: buildInputColumn2('Weight', '102.35')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn2('Rate', '0')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 15, child: buildInputColumn2('Amount', '0')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 15,
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
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: appColors.outlineColor)),
                    child: Table(
                      border: TableBorder.all(color: appColors.tabelcolor),
                      columnWidths: {
                        0: FixedColumnWidth(80),
                        1: FixedColumnWidth(130),
                        2: FixedColumnWidth(130),
                        3: FixedColumnWidth(130),
                        4: FixedColumnWidth(130),
                        5: FixedColumnWidth(130),
                        6: FixedColumnWidth(130),
                        7: FixedColumnWidth(120),
                      },
                      children: [
                        TableRow(
                          decoration:
                              BoxDecoration(color: appColors.primaryColor),
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
                              child: Center(
                                child: Text('Tr Type',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffffffff),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                child: Text('Assort No.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffffffff),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                child: Text('Kapan No.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffffffff),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                child: Text('Weight',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffffffff),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                child: Text('Rate',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffffffff),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                child: Text('Amount',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffffffff),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                child: Text('Lock',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffffffff),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(child: Text(''))),
                            Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(child: Text('Sale'))),
                            Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(child: Text('.'))),
                            Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(child: Text('z50'))),
                            Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(child: Text('102.35'))),
                            Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(child: Text('0'))),
                            Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(child: Text('0'))),
                            Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(child: Text('N'))),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
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
                                    index: 3, text: 'Search Kap', width: 100),
                                SizedBox(width: 10),
                                buildbotton(
                                    index: 4, text: 'Search MKap', width: 100),
                                SizedBox(width: 10),
                                buildbotton(
                                    index: 5, text: 'AssNo Report', width: 100),
                                SizedBox(width: 10),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                buildbotton(
                                    index: 6, text: 'First', width: 100),
                                SizedBox(width: 10),
                                buildbotton(index: 7, text: 'Last', width: 100),
                                SizedBox(width: 10),
                                buildbotton(index: 8, text: 'Next', width: 100),
                                SizedBox(width: 10),
                                buildbotton(
                                    index: 9, text: 'Previous', width: 100),
                                SizedBox(width: 10),
                                buildbotton(
                                    index: 10,
                                    text: 'Detail Report',
                                    width: 100),
                                SizedBox(width: 10),
                                buildbotton(
                                    index: 11,
                                    text: 'Stock Report',
                                    width: 100),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        buildbotton(
                            index: 13, text: "Exit", width: 100, height: 85)
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
