import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class QrScannerCalculatorScreen extends StatefulWidget {
  const QrScannerCalculatorScreen({super.key});

  @override
  State<QrScannerCalculatorScreen> createState() =>
      _QrScannerCalculatorScreenState();
}

class _QrScannerCalculatorScreenState extends State<QrScannerCalculatorScreen> {
  String? selectedValue;
  String? Selectedqr;

  int selectedIndex = 0;

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
            textScreen('Qr coad Entry', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 450),
                    child: Row(
                      children: [
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
                                  'Cent',
                                  'Charni',
                                  'Diameter',
                                  'Ls Top-Qr',
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
                            child: buildInputColumn('Manual Kapan Selection')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(child: buildInputColumn('Serial No')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn('Date')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn('User Name')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn('Kapan No.')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn('Clearity Name')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn('jangad No.')),
                        SizedBox(width: 5),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Qr',
                                style: TextStyle(
                                  color: appColors.primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 6),
                              CommonDropdownButton(
                                items: [
                                  'Qr1',
                                  'Qr2',
                                  'Qr3',
                                ],
                                initalValue: Selectedqr,
                                onChange: (p0) {
                                  setState(() {
                                    Selectedqr = p0;
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(child: buildInputColumn('Qr coad scan')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn('Diam/Cent')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn('R.Pcs')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn('R.Weight')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn('Exp.Weight')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn('Exp.Per%')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn('Com.Wt')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn('M.No.')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
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
                                border: TableBorder.all(
                                    color: appColors.tabelcolor),
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
                                border: TableBorder.all(
                                    color: appColors.tabelcolor),
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
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            flex: 7, child: buildInputColumn1('shope alert')),
                        SizedBox(width: 5),
                        Expanded(
                            flex: 7, child: buildInputColumn1('Kapan alert')),
                        SizedBox(width: 5),
                        Expanded(flex: 7, child: buildInputColumn1('clarity')),
                        SizedBox(width: 5),
                        Expanded(flex: 7, child: buildInputColumn1('Diameter')),
                        SizedBox(width: 5),
                        Expanded(flex: 7, child: buildInputColumn1('Ro.Wt')),
                        SizedBox(width: 5),
                        Expanded(flex: 7, child: buildInputColumn1('Pol.Wt')),
                        SizedBox(width: 5),
                        Expanded(
                            flex: 10,
                            child: buildInputColumn1('Box NO.Alert Pcs')),
                        SizedBox(width: 30),
                        Expanded(
                            flex: 5,
                            child: textScreen1('T', 20, appColors.primaryColor,
                                FontWeight.w600)),
                        SizedBox(width: 5),
                        Expanded(
                            flex: 5,
                            child: textScreen1('T', 20, appColors.primaryColor,
                                FontWeight.w600)),
                        SizedBox(width: 5),
                        Expanded(
                            flex: 5,
                            child: textScreen1('T', 20, appColors.primaryColor,
                                FontWeight.w600)),
                        SizedBox(width: 5),
                        Expanded(
                            flex: 5,
                            child: textScreen1('T', 20, appColors.primaryColor,
                                FontWeight.w600)),
                        SizedBox(width: 5),
                        Expanded(
                            flex: 5,
                            child: textScreen1('T', 20, appColors.primaryColor,
                                FontWeight.w600)),
                        SizedBox(width: 5),
                        Expanded(
                            flex: 5,
                            child: textScreen1('T', 20, appColors.primaryColor,
                                FontWeight.w600)),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 200, left: 200),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(1, 'Resat')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(2, 'Save')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(3, 'Edit')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(4, 'Barcoad Print')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(5, 'Lot No.Clear')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(6, 'Serach/Report')),
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
