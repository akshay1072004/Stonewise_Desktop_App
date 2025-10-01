import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class DaillyBookScreen extends StatefulWidget {
  const DaillyBookScreen({super.key});

  @override
  State<DaillyBookScreen> createState() => _DaillyBookScreenState();
}

class _DaillyBookScreenState extends State<DaillyBookScreen> {
  int selectedIndex = 0;

  String? selectedValue;
  String? selectedValue0;
  String? selectedValue1;

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
            textScreen('Daily Book Entry', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(flex: 1, child: buildInputColumn('Serial No.')),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Issue/ Rec.',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'ActivePart',
                                'Galaxy',
                                'Laser',
                                'Mixing',
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
                      Expanded(flex: 1, child: buildInputColumn('Date')),
                      SizedBox(width: 2),
                      Text('To',
                          style: TextStyle(color: appColors.primaryColor)),
                      SizedBox(width: 2),
                      Expanded(flex: 1, child: buildInputColumn('')),
                      SizedBox(width: 5),
                      Expanded(flex: 1, child: buildInputColumn('Department')),
                      SizedBox(width: 5),
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
                                'ActivePart',
                                'Galaxy',
                                'Laser',
                                'Mixing',
                              ],
                              initalValue: selectedValue0,
                              onChange: (p0) {
                                setState(() {
                                  selectedValue0 = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 2,
                          child: buildInputColumn('Job Work Factory Name')),
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
                                'ActivePart',
                                'Galaxy',
                                'Laser',
                                'Mixing',
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
                      Expanded(child: buildInputColumn('Pcs')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Kacha Pcs')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Carat')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Rate')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Net Amount')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Remarks')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
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
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Iss.Pec')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Iss Cts')),
                      SizedBox(width: 240),
                      Expanded(child: buildInputColumn('Stk Pcs')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Stk Cts')),
                      SizedBox(width: 20),
                      Expanded(child: buildInputColumn('Rec.Pcs')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Rec.Cts')),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(1, 'Insert')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(2, 'Edit')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(3, 'Delete')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(4, 'Search')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(5, 'Report')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(6, 'First')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(7, 'Last')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(8, 'Next')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(9, 'Privious')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(10, 'Exit')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
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
