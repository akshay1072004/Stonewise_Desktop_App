import 'package:flutter/material.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/text_screen.dart';

class FourDepartmentEntry extends StatefulWidget {
  const FourDepartmentEntry({super.key});

  @override
  State<FourDepartmentEntry> createState() => _FourDepartmentEntryState();
}

class _FourDepartmentEntryState extends State<FourDepartmentEntry> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedValue1;
  String? selectedProcess;
  String? selectedEmployee;
  String? selectedProcess1;
  String? selectedEmployee1;
  String? selectedKapan;
  String? selectedRemark;

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
            textScreen('4P : Issue - Recevive Entry', 25,
                appColors.primaryColor, FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 550),
                      child: Row(
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
                                    'SSDDW',
                                    'REQQEF',
                                    'ADDQSDD',
                                    'SDADAA',
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
                    SizedBox(height: 10),
                    Text('Receive Process',
                        style: TextStyle(color: appColors.primaryColor)),
                    Row(
                      children: [
                        Expanded(
                            flex: 10, child: buildInputColumn5('Issued date')),
                        SizedBox(width: 5),
                        Expanded(flex: 10, child: buildInputColumn2('No.', '')),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 15,
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
                        Expanded(flex: 10, child: buildInputColumn2('No.', '')),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 15,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Employee Name',
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
                                initalValue: selectedEmployee,
                                onChange: (p0) {
                                  setState(() {
                                    selectedEmployee = p0;
                                  });
                                },
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                            flex: 10,
                            child: buildInputColumn2('Issue Pcs', '')),
                        SizedBox(width: 5),
                        Expanded(
                            flex: 10,
                            child: buildInputColumn2('Issue Carat', '')),
                        SizedBox(width: 5),
                        Expanded(
                            flex: 10, child: buildInputColumn2('Size', '')),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text('Issue Process',
                        style: TextStyle(color: appColors.primaryColor)),
                    Row(
                      children: [
                        Expanded(
                            flex: 10, child: buildInputColumn2('J No', '')),
                        SizedBox(width: 5),
                        Expanded(
                            flex: 15, child: buildInputColumn5('Rec Date')),
                        SizedBox(width: 5),
                        Expanded(flex: 10, child: buildInputColumn2('No', '')),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 15,
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
                        Expanded(flex: 10, child: buildInputColumn2('No', '')),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 15,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Employee Name',
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
                                initalValue: selectedEmployee1,
                                onChange: (p0) {
                                  setState(() {
                                    selectedEmployee1 = p0;
                                  });
                                },
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                            flex: 10, child: buildInputColumn2('Ro.Pcs', '')),
                        SizedBox(width: 5),
                        Expanded(
                            flex: 10, child: buildInputColumn2('Ro.Cts', '')),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(child: buildInputColumn2('Barcode No', '')),
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
                        Expanded(child: buildInputColumn2('Si No', '')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn2('Rec.Pcs', '')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn2('Rec.Carat', '')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn2('Size', '')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn2('Unct.Cts', '')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn2('Loss Carat', '')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn2('Loss%', '')),
                        SizedBox(width: 5),
                        Expanded(
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
                                  'KACHA',
                                  'NONE',
                                ],
                                initalValue: selectedRemark,
                                onChange: (p0) {
                                  setState(() {
                                    selectedRemark = p0;
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
                          flex: 40,
                          child: Container(
                            height: 150,
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
                          flex: 60,
                          child: Container(
                            height: 150,
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
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        children: [
                          Expanded(child: buildbotton(1, 'Edit  Jangad')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(2, 'Bulk Entry')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(3, 'Insert')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(4, 'Edit')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(5, 'Delete')),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        children: [
                          Expanded(child: buildbotton(6, 'Ser Lot track')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(7, 'First')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(8, 'Last')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(9, 'Next')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(10, 'Previous')),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        children: [
                          Expanded(child: buildbotton(11, 'Brcd  Jangad')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(12, 'D jan.Print')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(13, 'S jan.Print')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(14, 'Search')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(15, 'Exit')),
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

  // Widget builddropdown(String title) {
  //   String? selectedValue;

  //   final List<String> itemss = ['Jan', 'Feb', 'March', 'Apr'];

  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         title,
  //         style: TextStyle(
  //           color: appColors.primaryColor,
  //           fontSize: 16,
  //           fontWeight: FontWeight.w500,
  //         ),
  //       ),
  //       CommonDropdownButton(
  //           isSelected: true, items: itemss, selectedValue: selectedValue)
  //     ],
  //   );
  // }

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
