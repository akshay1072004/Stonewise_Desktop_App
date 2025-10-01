import 'package:flutter/material.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/box.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/text_screen.dart';

class GalaxyDepartmentEntry extends StatefulWidget {
  const GalaxyDepartmentEntry({super.key});

  @override
  State<GalaxyDepartmentEntry> createState() => _GalaxyDepartmentEntryState();
}

class _GalaxyDepartmentEntryState extends State<GalaxyDepartmentEntry> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedProcess;
  String? selectedEntry;
  String? selectedValue2;
  String? selectedValue3;
  String? selectedValue4;
  String? selectedMachine;
  String? selectedLS;
  String? selectedValue6;
  String? selectedValue7;

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
            textScreen('Galaxy : Issue - Recevive Entry', 25,
                appColors.primaryColor, FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
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
                                  'SSDAS',
                                  'ASCAD',
                                  'WQDS',
                                  'ASDAC',
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
                        SizedBox(width: 10),
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
                                  'Galaxy',
                                  'S',
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
                      ],
                    ),
                    Divider(thickness: 1, color: appColors.primaryColor),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(child: issueprocess()),
                        VerticalDivider(
                            thickness: 1, color: appColors.primaryColor),
                        Expanded(child: recevived()),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(child: box()),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 150),
                      child: Row(
                        children: [
                          Expanded(child: buildbotton(1, 'Continue')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(2, 'Save')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(3, 'Cancel')),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
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

  Widget issueprocess() {
    return Container(
      width: 405,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Issue Process',
              style: TextStyle(color: appColors.primaryColor)),
          Row(
            children: [
              Expanded(child: buildInputColumn2('Stk Cts', '')),
              SizedBox(width: 10),
              Expanded(child: buildInputColumn2('Jangad No.', '')),
            ],
          ),
          Row(
            children: [
              Expanded(flex: 25, child: buildInputColumn2('Proces Name', '')),
              SizedBox(width: 5),
              Expanded(
                flex: 25,
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
                        'Galaxy',
                        'S',
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
              SizedBox(width: 5),
              Expanded(flex: 30, child: buildInputColumn2('Employee Name', '')),
              SizedBox(width: 5),
              Expanded(
                flex: 25,
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
                        'VishalBhai',
                        'dhg',
                      ],
                      initalValue: selectedValue3,
                      onChange: (p0) {
                        setState(() {
                          selectedValue3 = p0;
                        });
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(child: buildInputColumn2('Barcode No', '')),
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
                        'z69',
                      ],
                      initalValue: selectedValue4,
                      onChange: (p0) {
                        setState(() {
                          selectedValue4 = p0;
                        });
                      },
                    )
                  ],
                ),
              ),
              SizedBox(width: 5),
              Expanded(child: buildInputColumn2('', '')),
            ],
          ),
          Row(
            children: [
              Expanded(child: buildInputColumn2('Rec.Pcs', '')),
              SizedBox(width: 5),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Machine No',
                      style: TextStyle(
                        color: appColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 6),
                    CommonDropdownButton(
                      items: [
                        '1',
                        '2',
                        '3',
                        '4',
                      ],
                      initalValue: selectedMachine,
                      onChange: (p0) {
                        setState(() {
                          selectedMachine = p0;
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
                        '1T',
                        '2T',
                        '3T',
                        'PIE 1',
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
            ],
          ),
          Row(
            children: [
              Expanded(child: buildInputColumn2('Rec Carat', '')),
              SizedBox(width: 5),
              Expanded(child: buildInputColumn2('Loss Carat', '')),
              SizedBox(width: 5),
              Expanded(child: buildInputColumn2('', '')),
            ],
          ),
        ],
      ),
    );
  }

  Widget recevived() {
    return Container(
      width: 405,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('recevive Process',
              style: TextStyle(color: appColors.primaryColor)),
          Row(
            children: [
              Expanded(child: buildInputColumn5('Issue Date')),
              SizedBox(width: 10),
              Expanded(child: buildInputColumn2('Issue Pcs', '')),
            ],
          ),
          Row(
            children: [
              Expanded(child: buildInputColumn2('Ro.Pcs', '')),
              SizedBox(width: 10),
              Expanded(child: buildInputColumn2('Ro.Cts', '')),
            ],
          ),
          Row(
            children: [
              Expanded(child: buildInputColumn2('Employee Name', '')),
              SizedBox(width: 10),
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
                        'VishalBhai',
                        'dhg',
                      ],
                      initalValue: selectedValue6,
                      onChange: (p0) {
                        setState(() {
                          selectedValue6 = p0;
                        });
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(child: buildInputColumn2('Process Name', '')),
              SizedBox(width: 10),
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
                        'Galaxy',
                        'S',
                      ],
                      initalValue: selectedValue7,
                      onChange: (p0) {
                        setState(() {
                          selectedValue7 = p0;
                        });
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(child: buildInputColumn2('Issue Carat', '')),
              SizedBox(width: 10),
              Expanded(child: buildInputColumn2('Size', '')),
            ],
          ),
        ],
      ),
    );
  }
}
