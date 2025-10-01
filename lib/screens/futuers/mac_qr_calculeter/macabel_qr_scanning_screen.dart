import 'package:flutter/material.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/text_screen.dart';

class MacabelQrScanningScreen extends StatefulWidget {
  const MacabelQrScanningScreen({super.key});

  @override
  State<MacabelQrScanningScreen> createState() =>
      _MacabelQrScanningScreenState();
}

class _MacabelQrScanningScreenState extends State<MacabelQrScanningScreen> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedValue1;
  String? selectedValue2;


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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  textScreen(
                      'Macabel QR Scanning Entry',
                      25,
                      appColors.primaryColor,
                      FontWeight.w600,
                      TextAlign.center),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 450),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cent',
                                style: TextStyle(
                                  color: appColors.primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 6),
                              CommonDropdownButton(
                                items: [
                                  'Cent 1',
                                  'Cent 2',
                                  'Diameter',
                                  'Cent 4',
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
                                  'Normal Scan',
                                  'Scan WithBox No Display',
                                  'Scan WithBox No  Display 2',
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
                  ),
                  Row(
                    children: [
                      Expanded(flex: 1, child: buildInputColumn('Serial No.')),
                      SizedBox(width: 5),
                      Expanded(flex: 1, child: buildInputColumn('Date')),
                      SizedBox(width: 5),
                      Expanded(flex: 1, child: buildInputColumn('User Name')),
                      SizedBox(width: 5),
                      Expanded(flex: 1, child: buildInputColumn('Kapan NO.')),
                      SizedBox(width: 5),
                      Expanded(flex: 1, child: buildInputColumn('Lot NO.')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('')),
                      SizedBox(width: 5),
                      Expanded(flex: 1, child: buildInputColumn('Part NO.')),
                      SizedBox(width: 5),
                      Expanded(flex: 1, child: buildInputColumn('junjad NO.')),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Diameter',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                '0.85 to 1.00',
                                '1.01 to 1.25',
                                '1.26 to 1.5',
                                '1.51 to 1.80',
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
                          flex: 2, child: buildInputColumn('Qr Coad Sacn')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Diameter')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Shape')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Clarity')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Color')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Cut')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Charmi')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('R.Pcs')),
                      SizedBox(width: 5),
                      Expanded(flex: 1, child: buildInputColumn('Rough Cts')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Pol.Cts')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Con.Wt')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 140,
                              decoration: BoxDecoration(
                                color: Color(0xffF8FAFF),
                                border:
                                    Border.all(color: appColors.borderColor),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Table(
                                  border: TableBorder.all(
                                      color: appColors.tabelcolor),
                                  columnWidths: {
                                    0: FlexColumnWidth(0.2),
                                    1: FlexColumnWidth(0.4),
                                    2: FlexColumnWidth(0.4),
                                  },
                                  children: [
                                    TableRow(
                                      children: List.generate(
                                        3,
                                        (_) => Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            '',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TableRow(
                                      children: List.generate(
                                        3,
                                        (_) => Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(''),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 140,
                              decoration: BoxDecoration(
                                color: Color(0xffF8FAFF),
                                border:
                                    Border.all(color: appColors.borderColor),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Table(
                                  border: TableBorder.all(
                                      color: appColors.tabelcolor),
                                  columnWidths: {
                                    0: FlexColumnWidth(0.2),
                                    1: FlexColumnWidth(0.4),
                                    2: FlexColumnWidth(0.4),
                                  },
                                  children: [
                                    TableRow(
                                      children: List.generate(
                                        3,
                                        (_) => Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            '',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TableRow(
                                      children: List.generate(
                                        3,
                                        (_) => Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(''),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 290, // 140 + 140 + spacing
                          // width: 415,
                          decoration: BoxDecoration(
                            color: Color(0xffF8FAFF),
                            border: Border.all(color: appColors.borderColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20.0),
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
                                  children: List.generate(
                                    3,
                                    (_) => Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        '',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TableRow(
                                  children: List.generate(
                                    3,
                                    (_) => Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(''),
                                    ),
                                  ),
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
                                'QR 1',
                                'QR 2',
                                'QR AUTO',
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
                      Expanded(child: buildInputColumn('Kapan No Alert')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Shape Alert')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Pcts Diff.Alert')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Box No.Alert')),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Box No/Dia/Cent',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                '0.85 to 1.00',
                                '1.01 to 1.25',
                                '1.26 to 1.5',
                                '1.51 to 1.80',
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
                                ' Normal',
                                'Chapaka Part',
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
                      SizedBox(width: 20),
                      textScreen('T', 18, appColors.primaryColor,
                          FontWeight.w700, TextAlign.justify),
                      SizedBox(width: 20),
                      textScreen('T', 18, appColors.primaryColor,
                          FontWeight.w700, TextAlign.justify),
                      SizedBox(width: 20),
                      textScreen('T', 18, appColors.primaryColor,
                          FontWeight.w700, TextAlign.justify),
                      SizedBox(width: 20),
                      textScreen('T', 18, appColors.primaryColor,
                          FontWeight.w700, TextAlign.justify),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildbotton(0, 'save'),
                      SizedBox(width: 5),
                      buildbotton(1, 'Lot Chack'),
                      SizedBox(width: 5),
                      buildbotton(2, 'Edit'),
                      SizedBox(width: 5),
                      buildbotton(3, 'Brcd Print 1'),
                      SizedBox(width: 5),
                      buildbotton(4, 'Brcd Print 2'),
                      SizedBox(width: 5),
                      buildbotton(5, 'Search/Report'),
                    ],
                  ),
                  SizedBox(height: 10)
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
