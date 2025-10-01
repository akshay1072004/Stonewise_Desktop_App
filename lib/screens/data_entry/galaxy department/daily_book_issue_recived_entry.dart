import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class DailyBookIssueRecivedEntry extends StatefulWidget {
  const DailyBookIssueRecivedEntry({super.key});

  @override
  State<DailyBookIssueRecivedEntry> createState() =>
      _DailyBookIssueRecivedEntryState();
}

class _DailyBookIssueRecivedEntryState
    extends State<DailyBookIssueRecivedEntry> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedRate;
  String? selectedParty;
  

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
            textScreen('Daily Book Entry', 25, appColors.primaryColor,
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
                          child: buildInputColumn2('Serial No.', '2')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Iss./Rec',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Markish',
                                'Chowki',
                                'pan',
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
                          flex: 10,
                          child: buildInputColumn5('Date')),
                      SizedBox(width: 2),
                      Text('To',
                          style: TextStyle(color: appColors.primaryColor)),
                      SizedBox(width: 2),
                      Expanded(
                          flex: 10, child: buildInputColumn5('')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10,
                          child: buildInputColumn2('Department', 'ccv')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 10,
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
                                'Markish',
                                'Chowki',
                                'pan',
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
                      SizedBox(width: 5),
                      Expanded(
                          flex: 20,
                          child:
                              buildInputColumn2('Jobwork Factory Name', 'cdc')),
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
                              'Rate Type',
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
                              initalValue: selectedRate,
                              onChange: (p0) {
                                setState(() {
                                  selectedRate = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Pcs', '1')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Kacha Pcs', '1')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Carat', '0.28')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Rate', '0')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Net Amount', '0')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Remark', '0')),
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
                        child: Container(
                          height: 150,
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
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Iss.Pcs', '7')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Iss.Cts', '7')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Stk.Pcs', '7')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Stk.Cts', '7')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Rec.Pcs', '7')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Rec.Cts', '7')),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    color: appColors.primaryColor,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
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
                        Expanded(child: buildbotton(5, 'Report ')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
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
