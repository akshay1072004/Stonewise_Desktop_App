import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class GalaxyLottingEntry extends StatefulWidget {
  const GalaxyLottingEntry({super.key});

  @override
  State<GalaxyLottingEntry> createState() => _GalaxyLottingEntryState();
}

class _GalaxyLottingEntryState extends State<GalaxyLottingEntry> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedRelotting;
  String? selectedAlert;
  String? selectedShape;
  String? selectedProcess;
  String? selectedKapan;
  String? selectedParty;
  String? selectedLot;
  String? selectedClarity;
  String? selectedColor;
  String? selectedCharni;
  String? selectedQr;

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
            textScreen('Galaxy-Lotting Entry', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Barcode Print Type?',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'No Barcoded Print',
                                'No Barcoded Print QName',
                                'Entry With Barcode',
                                'Kati Weight With Barcode',
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
                              'Relotting Type',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Claving',
                              ],
                              initalValue: selectedRelotting,
                              onChange: (p0) {
                                setState(() {
                                  selectedRelotting = p0;
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
                              'Alert Kapan No.',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                '0',
                                '1',
                                '2',
                                '3',
                              ],
                              initalValue: selectedAlert,
                              onChange: (p0) {
                                setState(() {
                                  selectedAlert = p0;
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
                      Expanded(child: buildInputColumn5('Date')),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shape',
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
                                'Round',
                              ],
                              initalValue: selectedShape,
                              onChange: (p0) {
                                setState(() {
                                  selectedShape = p0;
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
                              'Process Type',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Fresh',
                                'ReLotting',
                                'MFG ReLotting',
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
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kapan No.',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Z69',
                              ],
                              initalValue: selectedKapan,
                              onChange: (p0) {
                                setState(() {
                                  selectedKapan = p0;
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
                              'Process',
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
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Jangad', '')),
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
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    color: appColors.primaryColor,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lot Series No',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'None',
                              ],
                              initalValue: selectedLot,
                              onChange: (p0) {
                                setState(() {
                                  selectedLot = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Barcoad', 'F000001')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Lot No', '1')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Qr Coad', '')),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Clarity',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'VVS 1',
                                'VS 1',
                                'VS 2',
                                'SI 2',
                              ],
                              initalValue: selectedClarity,
                              onChange: (p0) {
                                setState(() {
                                  selectedClarity = p0;
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
                              'Color',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                '.',
                              ],
                              initalValue: selectedColor,
                              onChange: (p0) {
                                setState(() {
                                  selectedColor = p0;
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
                              'Charni',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                '.',
                              ],
                              initalValue: selectedCharni,
                              onChange: (p0) {
                                setState(() {
                                  selectedCharni = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Pcs', '')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Carat', '')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Diameter', '')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Exp. Cts', '')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Exp%', '')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 150,
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
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          flex: 10, child: buildInputColumn2('Lot', '0.00')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Pcs', '0.00')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Cts', '0.00')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'QR 1',
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
                              ],
                              initalValue: selectedQr,
                              onChange: (p0) {
                                setState(() {
                                  selectedQr = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 20,
                          child: buildInputColumn2('Ro.Cts Alert', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 20,
                          child: buildInputColumn2('Jno Auto Plus', '')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn2('Pcs', '')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn2('Cts', '')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn2('', '')),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    color: appColors.primaryColor,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(1, 'Change Wt')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(2, 'Lot Ser.Entry')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(3, 'Insert')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(4, 'Edit ')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(5, 'Delete ')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(6, 'Search ')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(7, 'Search Lot')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(8, 'Barcoad')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(9, 'First')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(10, 'Last')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(11, 'Next')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(12, 'Previous ')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(13, 'STN imp')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(14, 'Brcd jangud')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(15, 'D jan.Print')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(16, 'S jan.Print')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(17, 'Excl  imp')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(18, 'Exit')),
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
