import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class MfgIssueRecEntry extends StatefulWidget {
  const MfgIssueRecEntry({super.key});

  @override
  State<MfgIssueRecEntry> createState() => _MfgIssueRecEntryState();
}

class _MfgIssueRecEntryState extends State<MfgIssueRecEntry> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedProcess;
  String? selectedEntry;
  String? selectedValue1;
  String? selectedProcess2;
  String? selectedEmpolyee;
  String? selectedKapan;
  String? selectedEmpolyee1;
  String? selectedKapan1;
  String? selectedRemark1;
  String? selectedShape;
  String? selectedClarity;
  String? selectedColor;
  String? selectedCut;
  String? selectedPolish;
  String? selectedSymentry;
  String? selectedCharni;

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
            textScreen('MFG : Issue - Received Entry', 25,
                appColors.primaryColor, FontWeight.w600, TextAlign.center),
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
                                'DFDFVD',
                                'EFDCC',
                                'FDFVD',
                                'QDCAG',
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
                              'Process Name',
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
                                'Active Part',
                                'Galaxy',
                                'Laser',
                                'Mixing',
                              ],
                              initalValue: selectedEntry,
                              onChange: (p0) {
                                setState(() {
                                  selectedEntry = p0;
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
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          flex: 15, child: buildInputColumn5('Issue Date')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn2('No', '1')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Process Name',
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
                              initalValue: selectedProcess2,
                              onChange: (p0) {
                                setState(() {
                                  selectedProcess2 = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn2('No', '1')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Empolyee Name',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                '',
                                '',
                                '',
                                '',
                              ],
                              initalValue: selectedEmpolyee,
                              onChange: (p0) {
                                setState(() {
                                  selectedEmpolyee = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Issue Pcs', '1')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 15,
                          child: buildInputColumn2('Issue Carat', '1')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Rec.j.No', '1')),
                      SizedBox(width: 5),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(flex: 10, child: buildInputColumn2('J No', '')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn5('Rec Date')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn2('No', '1`')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 20,
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
                      Expanded(flex: 10, child: buildInputColumn2('NO', '1`1')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Empolyee Name',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                '',
                                '',
                                '',
                                '',
                              ],
                              initalValue: selectedEmpolyee1,
                              onChange: (p0) {
                                setState(() {
                                  selectedEmpolyee1 = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Ro.pcs', '1')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Ro.cts', '1')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          flex: 20,
                          child: buildInputColumn2('Barcoad No', '1')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 15,
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
                              initalValue: selectedKapan1,
                              onChange: (p0) {
                                setState(() {
                                  selectedKapan1 = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('SI No', '1')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Rec.pcs', '1')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 15, child: buildInputColumn2('Rec.Carat', '1')),
                      SizedBox(width: 5),
                      Expanded(flex: 10, child: buildInputColumn2('Size', '1')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 15, child: buildInputColumn2('Uncat Pcs', '1')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 15, child: buildInputColumn2('Uncat Cts', '1')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 15,
                          child: buildInputColumn2('Loss Carat', '1')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 15, child: buildInputColumn2('Loss%', '1')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Remark',
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
                                'OP',
                                'KACHA',
                                'NONE',
                              ],
                              initalValue: selectedRemark1,
                              onChange: (p0) {
                                setState(() {
                                  selectedRemark1 = p0;
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
                          flex: 20,
                          child: buildInputColumn2('MainKapan No', '1')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Qr Coad', '1')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 10, child: buildInputColumn2('Exp.Cts', '1')),
                      SizedBox(width: 5),
                      Expanded(flex: 15, child: buildInputColumn2('Exp%', '1')),
                      SizedBox(width: 5),
                      Expanded(flex: 15, child: buildInputColumn2('Dia.', '1')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 10,
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
                        flex: 10,
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
                                'IF',
                                'VVS 1',
                                'VVS 2',
                                'VS 1',
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
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 300),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 15,
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
                                  'D',
                                  'E',
                                  'F',
                                  'G',
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
                        SizedBox(width: 5),
                        Expanded(
                          flex: 15,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cut',
                                style: TextStyle(
                                  color: appColors.primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 6),
                              CommonDropdownButton(
                                items: [
                                  'EX',
                                  'VG',
                                  'GD',
                                  '.',
                                ],
                                initalValue: selectedCut,
                                onChange: (p0) {
                                  setState(() {
                                    selectedCut = p0;
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
                                'Polish',
                                style: TextStyle(
                                  color: appColors.primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 6),
                              CommonDropdownButton(
                                items: [
                                  'EX',
                                  'VG',
                                  'GD',
                                  '.',
                                ],
                                initalValue: selectedPolish,
                                onChange: (p0) {
                                  setState(() {
                                    selectedPolish = p0;
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
                                'Symentry',
                                style: TextStyle(
                                  color: appColors.primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 6),
                              CommonDropdownButton(
                                items: [
                                  'EX',
                                  'VG',
                                  'GD',
                                  '.',
                                ],
                                initalValue: selectedSymentry,
                                onChange: (p0) {
                                  setState(() {
                                    selectedSymentry = p0;
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
                                  '.',
                                  '1',
                                  '2',
                                  '3',
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
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 40,
                            child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                color: Color(0xffF8FAFF),
                                border:
                                    Border.all(color: appColors.borderColor),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 150, 0),
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
                            flex: 60,
                            child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                color: Color(0xffF8FAFF),
                                border:
                                    Border.all(color: appColors.borderColor),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 150, 0),
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
                      Row(
                        children: [
                          Expanded(child: buildInputColumn2('', 'cfsd')),
                          SizedBox(width: 5),
                          Expanded(child: buildInputColumn2('', 'gb')),
                          SizedBox(width: 5),
                          Expanded(child: buildInputColumn2('', 'bg')),
                          SizedBox(width: 5),
                          Expanded(child: buildInputColumn2('', 'bg')),
                          SizedBox(width: 5),
                          Expanded(child: buildInputColumn2('', 'cbgc')),
                          SizedBox(width: 200),
                          Expanded(
                              child: buildInputColumn2('jno/Barcoad', 'vc')),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(1, 'Bulk Pcs Entry')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(2, 'Bulk Entry')),
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
                        Expanded(child: buildbotton(7, 'Edit Jangad')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(8, 'Search Lot')),
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
