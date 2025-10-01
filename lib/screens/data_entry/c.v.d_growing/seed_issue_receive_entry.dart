import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class SeedIssueReceiveEntry extends StatefulWidget {
  const SeedIssueReceiveEntry({super.key});

  @override
  State<SeedIssueReceiveEntry> createState() => _SeedIssueReceiveEntryState();
}

class _SeedIssueReceiveEntryState extends State<SeedIssueReceiveEntry> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedValue1;
  String? selectedEmployee;
  String? selectedSeed;
  String? selectedSeedtype;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CommonDialog(
        width: 1100,
        child: Column(
          children: [
            titlebar(
              () {
                Navigator.pop(context);
              },
            ),
            textScreen('SEED-Lotting Entry', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 750),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Entry Type',
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
                  ),
                  Row(
                    children: [
                      Text(
                        'Receive Process',
                        style: TextStyle(
                            color: appColors.primaryColor, fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn5('issue Date')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('No.', '')),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Entry Type',
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
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('No.', '')),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Employee Name',
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
                                'dhd',
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
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Issue PCS', '')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Issue Carat', '')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Rec.J.No', '')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seed Box No.',
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
                                'dhd',
                              ],
                              initalValue: selectedSeed,
                              onChange: (p0) {
                                setState(() {
                                  selectedSeed = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seed Type',
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
                                'dhd',
                              ],
                              initalValue: selectedSeedtype,
                              onChange: (p0) {
                                setState(() {
                                  selectedSeedtype = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seed Description',
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
                                'dhd',
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
                          flex: 10, child: buildInputColumn2('Rough Type', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Clarity', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Priority', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Run No', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Machine No', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Start Time', '')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Issue Process',
                        style: TextStyle(
                            color: appColors.primaryColor, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(flex: 10, child: buildInputColumn2('J.No', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Rec Date', '')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn2('No.', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 15,
                          child: buildInputColumn2('Process Name', '')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn2('No.', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 15,
                          child: buildInputColumn2('Employee Name', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Ro.Pcs', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Ro.Carat', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10,
                          child: buildInputColumn2('Seed Height', '')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          flex: 10, child: buildInputColumn2('Barcoad No', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('batch No', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Rec.Pcs', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Rec.Pcs', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Rec.Carat', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Rej Pcs', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Rej.Carat', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10,
                          child: buildInputColumn2('Rej descrition', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 15,
                          child: buildInputColumn2('Seed Splite Pcs', '')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          flex: 10, child: buildInputColumn2('Remark', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Work.Hours', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('end Time', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10,
                          child: buildInputColumn2('Vestage Pcs', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10,
                          child: buildInputColumn2('Vestage Cts', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 20,
                          child: buildInputColumn2('Vestage Descripition', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Loss Carat', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Labour', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Amount', '')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        flex: 40,
                        child: Container(
                          height: 255,
                          decoration: BoxDecoration(
                            color: Color(0xffF8FAFF),
                            border: Border.all(color: appColors.borderColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 150, 0),
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
                      SizedBox(width: 10),
                      Expanded(
                        flex: 60,
                        child: Container(
                          height: 255,
                          decoration: BoxDecoration(
                            color: Color(0xffF8FAFF),
                            border: Border.all(color: appColors.borderColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 150, 0),
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
                  SizedBox(height: 20)
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
