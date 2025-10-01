import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class ProcessWiseLabourMaster extends StatefulWidget {
  const ProcessWiseLabourMaster({super.key});

  @override
  State<ProcessWiseLabourMaster> createState() =>
      _ProcessWiseLabourMasterState();
}

class _ProcessWiseLabourMasterState extends State<ProcessWiseLabourMaster> {
  int selectedIndex = 0;
  String? selectedLabouer;
  String? selectedProcess;
  String? selectedParty;
  String? selectedProcess1;
  String? selectedShape;
  String? selectedLS;
  String? selectedTop;

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
            textScreen('Process Wise Labouer Master', 25,
                appColors.primaryColor, FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Serial No.', '1')),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Labouer Type',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Loos Pcs',
                                'Pcs',
                                'Cent',
                                'Charni',
                              ],
                              initalValue: selectedLabouer,
                              onChange: (p0) {
                                setState(() {
                                  selectedLabouer = p0;
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
                                'SARIN',
                                'GALAXY',
                                'MANGNUS',
                                'SYMBOL',
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
                              'LS Top',
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
                              initalValue: selectedLS,
                              onChange: (p0) {
                                setState(() {
                                  selectedLS = p0;
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
                              'Top Cts',
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
                              ],
                              initalValue: selectedTop,
                              onChange: (p0) {
                                setState(() {
                                  selectedTop = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Lab Slab.', '')),
                      Text('To',
                          style: TextStyle(color: appColors.primaryColor)),
                      Expanded(child: buildInputColumn2('Lab Slab.', '')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('Labour', '')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('remarks', '')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: appColors.outlineColor)),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Table(
                        border: TableBorder.all(color: appColors.tabelcolor),
                        columnWidths: {
                          0: FixedColumnWidth(80),
                          1: FixedColumnWidth(120),
                          2: FixedColumnWidth(100),
                          3: FixedColumnWidth(100),
                          4: FixedColumnWidth(100),
                          5: FixedColumnWidth(100),
                          6: FixedColumnWidth(100),
                          7: FixedColumnWidth(100),
                          8: FixedColumnWidth(100),
                          9: FixedColumnWidth(100),
                        },
                        children: [
                          TableRow(
                            decoration:
                                BoxDecoration(color: appColors.primaryColor),
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
                                child: Center(
                                  child: Text('Type',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text('Cent',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text('ToCent',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text('TopCalPer',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text('Labour',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text('Shape',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text('Remarks',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text('S_No',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          // TableRow(
                          //   children: [
                          //     Padding(
                          //         padding: EdgeInsets.all(8.0),
                          //         child: Center(child: Text(''))),
                          //     Padding(
                          //         padding: EdgeInsets.all(8.0),
                          //         child: Center(child: Text('Sale'))),
                          //     Padding(
                          //         padding: EdgeInsets.all(8.0),
                          //         child: Center(child: Text('.'))),
                          //     Padding(
                          //         padding: EdgeInsets.all(8.0),
                          //         child: Center(child: Text('z50'))),
                          //     Padding(
                          //         padding: EdgeInsets.all(8.0),
                          //         child: Center(child: Text('102.35'))),
                          //     Padding(
                          //         padding: EdgeInsets.all(8.0),
                          //         child: Center(child: Text('0'))),
                          //     Padding(
                          //         padding: EdgeInsets.all(8.0),
                          //         child: Center(child: Text('0'))),
                          //     Padding(
                          //         padding: EdgeInsets.all(8.0),
                          //         child: Center(child: Text('N'))),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 150),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                buildbotton(
                                    index: 0, text: 'Insert', width: 100),
                                SizedBox(width: 10),
                                buildbotton(index: 1, text: 'Edit', width: 100),
                                SizedBox(width: 10),
                                buildbotton(
                                    index: 2, text: 'Delete', width: 100),
                                SizedBox(width: 10),
                                buildbotton(
                                    index: 3, text: 'Search', width: 100),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                buildbotton(
                                    index: 4, text: 'First', width: 100),
                                SizedBox(width: 10),
                                buildbotton(index: 5, text: 'Last', width: 100),
                                SizedBox(width: 10),
                                buildbotton(index: 6, text: 'Next', width: 100),
                                SizedBox(width: 10),
                                buildbotton(
                                    index: 7, text: 'Previous', width: 100),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        buildbotton(
                            index: 8, text: "Exit", width: 100, height: 85)
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
      {int? index, String? text, double? width, double? height}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index!;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              width: width,
              // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              height: height ?? 40,
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
                      text!,
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
