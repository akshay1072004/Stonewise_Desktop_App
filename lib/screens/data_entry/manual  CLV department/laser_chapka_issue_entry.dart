import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class LaserChapkaIssueEntry extends StatefulWidget {
  const LaserChapkaIssueEntry({super.key});

  @override
  State<LaserChapkaIssueEntry> createState() => _LaserChapkaIssueEntryState();
}

class _LaserChapkaIssueEntryState extends State<LaserChapkaIssueEntry> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedValue2;
  String? selectedKapna;
  String? selectedCompany;
  String? selectedRemark;

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
            textScreen('Lesser/Chapak Issue Entry', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                'aaaa',
                                'bbbb',
                                'cccc',
                                'dddd',
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
                                'NO BARCOAD PRINT',
                                'ENTRY BARCOAD',
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
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          flex: 20, child: buildInputColumn2('Serial No', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 20,
                          child: buildInputColumn2('Process Name', '')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kapna No.',
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
                              initalValue: selectedKapna,
                              onChange: (p0) {
                                setState(() {
                                  selectedKapna = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 20, child: buildInputColumn2('Lot No', '')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Company Name',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'aaaa',
                                'bbbb',
                                'cccc',
                                'dddd',
                              ],
                              initalValue: selectedCompany,
                              onChange: (p0) {
                                setState(() {
                                  selectedCompany = p0;
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
                      Expanded(child: buildInputColumn2('Jangad No', '')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn5('Date')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Pcs', '')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Weight', '')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Labour', '')),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Remark/Tops',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'aaaa',
                                'bbbb',
                                'cccc',
                                'dddd',
                              ],
                              initalValue: selectedRemark,
                              onChange: (p0) {
                                setState(() {
                                  selectedRemark = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Barcode', '')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color(0xffF8FAFF),
                            border: Border.all(color: appColors.borderColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 450, 0),
                            child: Table(
                              border:
                                  TableBorder.all(color: appColors.tabelcolor),
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
                    ],
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
                        Expanded(child: buildbotton(4, 'Search')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(5, 'Brcd Print')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(6, 'Report')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(7, 'Change Wt')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(8, 'First')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(9, 'Last')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(10, 'Next')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(11, 'Previous')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(12, 'Jangad Print')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(13, 'Exit')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(14, 'Rep')),
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
