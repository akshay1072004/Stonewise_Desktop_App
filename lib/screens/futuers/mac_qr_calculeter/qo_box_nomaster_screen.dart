import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class QoBoxNomasterScreen extends StatefulWidget {
  const QoBoxNomasterScreen({super.key});

  @override
  State<QoBoxNomasterScreen> createState() => _QoBoxNomasterScreenState();
}

class _QoBoxNomasterScreenState extends State<QoBoxNomasterScreen> {
  String? selectedValue;
  String? selectedClarity;
  String? selectedColor;
  String? selectedDiameter;
  String? selectedCarity2;

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CommonDialog(
      child: Column(
        children: [
          titlebar(
            () {
              Navigator.pop(context);
            },
          ),
          Column(
            children: [
              textScreen('Qr-Box No Master', 25, appColors.primaryColor,
                  FontWeight.w600, TextAlign.center),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(child: buildInputColumn('Box No.')),
                    SizedBox(width: 5),
                    Expanded(child: buildInputColumn('Shape Name')),
                    SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Box Type',
                            style: TextStyle(
                              color: appColors.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 6),
                          CommonDropdownButton(
                            items: [
                              'DIAMETER 1',
                              'DIAMETER 2',
                              'DIAMETER 3',
                              'DIAMETER 4',
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
                            'Clarity Group/ GD',
                            style: TextStyle(
                              color: appColors.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 6),
                          CommonDropdownButton(
                            items: [
                              'COLLECTION',
                              'IF1',
                              'vvsl',
                              'vvs2',
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
                            'Color/GD',
                            style: TextStyle(
                              color: appColors.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 6),
                          CommonDropdownButton(
                            items: [
                              'NONE',
                              'D',
                              'E',
                              'F',
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
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(child: buildInputColumn('Fr.Dia./Cent/Cr')),
                    SizedBox(width: 5),
                    Expanded(child: buildInputColumn('To.Dia./Cent/Cr')),
                    SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Diameter/Cent',
                            style: TextStyle(
                              color: appColors.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 6),
                          CommonDropdownButton(
                            items: [
                              'a to a',
                              '1 to 2',
                              '1 to 3',
                            ],
                            initalValue: selectedDiameter,
                            onChange: (p0) {
                              setState(() {
                                selectedDiameter = p0;
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
                              'NONE',
                              'D',
                              'E',
                              'F',
                            ],
                            initalValue: selectedCarity2,
                            onChange: (p0) {
                              setState(() {
                                selectedCarity2 = p0;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(child: buildInputColumn('Box alert Qr')),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Table(
                border: TableBorder.all(color: appColors.tabelcolor),
                columnWidths: {
                  0: FixedColumnWidth(60),
                  1: FixedColumnWidth(110),
                  2: FixedColumnWidth(110),
                  3: FixedColumnWidth(110),
                  4: FixedColumnWidth(110),
                  5: FixedColumnWidth(110),
                  6: FixedColumnWidth(110),
                  7: FixedColumnWidth(110),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: appColors.primaryColor),
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
                        child: Text('Box Type',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Box NO',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Shape',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Diameter/Cent',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Clarity',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('ClarityGrp',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Qty Alert',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff),
                            )),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                      Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('DIAMETER 4')),
                      Padding(padding: EdgeInsets.all(8.0), child: Text('3')),
                      Padding(padding: EdgeInsets.all(8.0), child: Text('as')),
                      Padding(
                          padding: EdgeInsets.all(8.0), child: Text('1 to 3')),
                      Padding(padding: EdgeInsets.all(8.0), child: Text('E')),
                      Padding(
                          padding: EdgeInsets.all(8.0), child: Text('VVS1')),
                      Padding(padding: EdgeInsets.all(8.0), child: Text('a')),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                      Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('DIAMETER 1')),
                      Padding(padding: EdgeInsets.all(8.0), child: Text('1')),
                      Padding(
                          padding: EdgeInsets.all(8.0), child: Text('Round')),
                      Padding(
                          padding: EdgeInsets.all(8.0), child: Text('1 to 2')),
                      Padding(
                          padding: EdgeInsets.all(8.0), child: Text('NONE')),
                      Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('COLLECTION')),
                      Padding(padding: EdgeInsets.all(8.0), child: Text('1')),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                      Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('DIAMETER 1')),
                      Padding(padding: EdgeInsets.all(8.0), child: Text('2')),
                      Padding(
                          padding: EdgeInsets.all(8.0), child: Text('Round')),
                      Padding(
                          padding: EdgeInsets.all(8.0), child: Text('1 to 2')),
                      Padding(
                          padding: EdgeInsets.all(8.0), child: Text('NONE')),
                      Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('COLLECTION')),
                      Padding(padding: EdgeInsets.all(8.0), child: Text('2')),
                    ],
                  ),
                ],
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
                            buildbotton(index: 0, text: 'Insert', width: 100),
                            SizedBox(width: 10),
                            buildbotton(index: 1, text: 'Edit', width: 100),
                            SizedBox(width: 10),
                            buildbotton(index: 2, text: 'Delete', width: 100),
                            SizedBox(width: 10),
                            buildbotton(index: 3, text: 'Search', width: 100),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            buildbotton(index: 4, text: 'First', width: 100),
                            SizedBox(width: 10),
                            buildbotton(index: 5, text: 'Last', width: 100),
                            SizedBox(width: 10),
                            buildbotton(index: 6, text: 'Next', width: 100),
                            SizedBox(width: 10),
                            buildbotton(index: 7, text: 'Previous', width: 100),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    buildbotton(index: 8, text: "Exit", width: 100, height: 85)
                  ],
                ),
              )
            ],
          ),
        ],
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
