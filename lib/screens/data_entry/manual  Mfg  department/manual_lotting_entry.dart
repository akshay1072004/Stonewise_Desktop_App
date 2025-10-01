import 'package:flutter/material.dart';
import 'package:stonewise/utilites/box.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class ManualLottingEntry extends StatefulWidget {
  const ManualLottingEntry({super.key});

  @override
  State<ManualLottingEntry> createState() => _ManualLottingEntryState();
}

class _ManualLottingEntryState extends State<ManualLottingEntry> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedProcess;
  String? selectedBarcode;
  String? selectedShade;
  String? selectedShape;
  String? selectedKapan;
  String? selectedProcess1;
  String? selectedParty;
  String? selectedQuailty;
  String? selectedCharni;

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
            textScreen('Manual Lotting Entry', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Select Any  One?',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Active Part',
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
                      Expanded(
                        flex: 30,
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
                                'Active Part',
                                'Galaxy',
                                'Laser',
                                'Mixing',
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
                        flex: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Barcode Print',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Active Part',
                                'Galaxy',
                                'Laser',
                                'Mixing',
                              ],
                              initalValue: selectedBarcode,
                              onChange: (p0) {
                                setState(() {
                                  selectedBarcode = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shade',
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
                                'Laser',
                                'Mixing',
                              ],
                              initalValue: selectedShade,
                              onChange: (p0) {
                                setState(() {
                                  selectedShade = p0;
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
                                'Active Part',
                                'Galaxy',
                                'Laser',
                                'Mixing',
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
                                'z69',
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
                                'Active Part',
                                'Galaxy',
                                'Laser',
                                'Mixing',
                              ],
                              initalValue: selectedProcess1,
                              onChange: (p0) {
                                setState(() {
                                  selectedProcess1 = p0;
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
                                'Active Part',
                                'Galaxy',
                                'Laser',
                                'Mixing',
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
                      Expanded(child: buildInputColumn2('Jungad No.', '')),
                      Text(
                        '+',
                        style: TextStyle(color: appColors.primaryColor),
                      ),
                      Expanded(child: buildInputColumn2('QR Coad', '')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          flex: 10, child: buildInputColumn2('Lots No', '')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Quailty',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Active Part',
                                'Galaxy',
                                'Laser',
                                'Mixing',
                              ],
                              initalValue: selectedQuailty,
                              onChange: (p0) {
                                setState(() {
                                  selectedQuailty = p0;
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
                                'Active Part',
                                'Galaxy',
                                'Laser',
                                'Mixing',
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
                      Expanded(
                          flex: 15, child: buildInputColumn2('Kacha Pcs.', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 15, child: buildInputColumn2('K.Weight', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 15, child: buildInputColumn2('K.Weight', '')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn2('Size', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Exp.Wt', '')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn2('Exp%', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 15, child: buildInputColumn2('Barcoad', '')),
                    ],
                  ),
                  SizedBox(height: 10),
                  box(),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(flex: 15, child: buildInputColumn('Relot Pcs')),
                      SizedBox(width: 5),
                      Expanded(flex: 15, child: buildInputColumn('Relot Cts')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn('Lot')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn('Pcs')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn('Cts')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 20, child: buildInputColumn('Total Fresh')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn('Issue')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn('')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn('')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 25, child: buildInputColumn('Total Relotting')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn('Issue')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn('')),
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
                        Expanded(child: buildbotton(5, 'IPrint')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(6, 'Chng Charni')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(7, 'Barcoad')),
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
                        Expanded(child: buildbotton(12, 'iprint')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(13, 'Chng Wt')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(14, 'Exit')),
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
