import 'package:flutter/material.dart';
import 'package:stonewise/utilites/box.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class RepairingIssueEntry extends StatefulWidget {
  const RepairingIssueEntry({super.key});

  @override
  State<RepairingIssueEntry> createState() => _RepairingIssueEntryState();
}

class _RepairingIssueEntryState extends State<RepairingIssueEntry> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedProcess;
  String? selectedPart;
  String? selectedKapan;
  String? selectedQuality;
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
            textScreen('Repairing Issue Entry', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 50,
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
                        Expanded(flex: 25, child: buildInputColumn('Barcoad')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(flex: 10, child: buildInputColumn5('Rec.Date')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 10,
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
                                'Activve Type',
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
                        flex: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Part Name',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Activve Type',
                                'Galaxy',
                                'Laser',
                                'Mixing',
                              ],
                              initalValue: selectedPart,
                              onChange: (p0) {
                                setState(() {
                                  selectedPart = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Jangad No', '')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 10,
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
                          flex: 10, child: buildInputColumn2('Lot No', '')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(flex: 10, child: buildInputColumn2('', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Kacha Pcs', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Kacha Wt', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Issue Pcs.', '')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Issue Wt', '')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn2('Type', '')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Quality',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Activve Type',
                                'Galaxy',
                                'Laser',
                                'Mixing',
                              ],
                              initalValue: selectedQuality,
                              onChange: (p0) {
                                setState(() {
                                  selectedQuality = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Charni', '')),
                    ],
                  ),
                  SizedBox(height: 10),
                  box(),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Pcs', '')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Cts', '')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Remark', '')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Jungad Report', '')),
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
                                'No Barcoade Print',
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
                        Expanded(child: buildbotton(6, 'Jangad Report')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(7, 'First')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(8, 'Last')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(9, 'Next')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(10, 'Previous')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(11, 'Barcode')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(12, 'Exit')),
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
