import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class SeedLottingEntry extends StatefulWidget {
  const SeedLottingEntry({super.key});

  @override
  State<SeedLottingEntry> createState() => _SeedLottingEntryState();
}

class _SeedLottingEntryState extends State<SeedLottingEntry> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedRough;
  String? selectedSeedtype;
  String? selectedSeedbox;
  String? selectedProcess;
  String? selectedPartyName;
  String? selectedDescripition;
  String? selectedPriority;
  String? selectedClarity;

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
            textScreen('SEED-Lotting Entry', 25, appColors.primaryColor,
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
                              'Barcoad Print Type?',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'NO BARCODE PRINT',
                                'ENTRY WITH BARCODE',
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
                          child:
                              buildInputColumn2('Relotting Type', 'Cleving')),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn5('Date')),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rough Type',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'CVD',
                                'DVD',
                              ],
                              initalValue: selectedRough,
                              onChange: (p0) {
                                setState(() {
                                  selectedRough = p0;
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
                                'FRESH SEED',
                                'SCLICE SEED',
                                'RECYCLE SEED',
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seed Box No',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'CVD',
                                'DVD',
                              ],
                              initalValue: selectedSeedbox,
                              onChange: (p0) {
                                setState(() {
                                  selectedSeedbox = p0;
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
                                'CVD',
                                'DVD',
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
                      Expanded(child: buildInputColumn2('Jungad', '2')),
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
                                'CVD',
                                'DVD',
                              ],
                              initalValue: selectedPartyName,
                              onChange: (p0) {
                                setState(() {
                                  selectedPartyName = p0;
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
                  Row(
                    children: [
                      Expanded(
                          flex: 1, child: buildInputColumn2('Barcoad', '525')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 1,
                          child: buildInputColumn2('Batch No', '252vf')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seed Descripition',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'CVD',
                                'DVD',
                              ],
                              initalValue: selectedDescripition,
                              onChange: (p0) {
                                setState(() {
                                  selectedDescripition = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Priority',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'CVD',
                                'DVD',
                              ],
                              initalValue: selectedPriority,
                              onChange: (p0) {
                                setState(() {
                                  selectedPriority = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 1,
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
                                'CVD',
                                'DVD',
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
                          flex: 2,
                          child: buildInputColumn2('Seed  Height', '25')),
                      SizedBox(width: 5),
                      Expanded(flex: 1, child: buildInputColumn2('Pcs', '25')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Carats', '2')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 1, child: buildInputColumn2('Run No', '5')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 2, child: buildInputColumn2('Machine No', '2')),
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
                            padding: const EdgeInsets.fromLTRB(0, 0, 300, 0),
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
                  Padding(
                    padding: const EdgeInsets.only(right: 650),
                    child: Row(
                      children: [
                        Expanded(child: buildInputColumn2('Lot', '521')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn2('Pcs', '25')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn2('Cts', '52')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn2('Stk', '5')),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: appColors.primaryColor,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(1, 'Change Wt')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(2, 'Insert')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(3, 'Edit')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(4, 'Delete')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(5, 'Search  Brcd')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(6, 'Search Batch')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(7, 'Barcoad')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(8, 'Search Lot')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(9, 'First')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(10, 'Last')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(11, 'Next')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(12, 'Privious')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(13, 'Exit')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(14, 'Jangud Print')),
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
