import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_textfild.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';
import 'package:stonewise/utilites/dilog_screen.dart';

class CustomizedReportScreen extends StatefulWidget {
  const CustomizedReportScreen({super.key});

  @override
  State<CustomizedReportScreen> createState() => _CustomizedReportScreenState();
}

class _CustomizedReportScreenState extends State<CustomizedReportScreen> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedcolor;

  @override
  Widget build(BuildContext context) {
    return CommonDialog(
      width: 880,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            titlebar(() {
              Navigator.pop(context);
            }),
            SingleChildScrollView(
              child: Column(
                children: [
                  textScreen(
                    'Customize Report Master',
                    25,
                    appColors.primaryColor,
                    FontWeight.w600,
                    TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Serial No.')),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Report Name',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            // const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'SARIN',
                                'GALAXY',
                                'MANGNUS',
                                'SYMBOL',
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
                      Expanded(child: buildInputColumn('Kapan/Style')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Cent/ L.no')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('To Cent/ L.no')),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Color/Clarity',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            // SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'RED',
                                'BLUE',
                                'PINK',
                                'GREEN',
                              ],
                              initalValue: selectedcolor,
                              onChange: (p0) {
                                setState(() {
                                  selectedcolor = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Table(
                    border: TableBorder.all(color: appColors.tabelcolor),
                    columnWidths: {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(1),
                      2: FlexColumnWidth(1),
                      3: FlexColumnWidth(1),
                      4: FlexColumnWidth(1),
                      5: FlexColumnWidth(1),
                    },
                    children: [
                      TableRow(
                        children: [
                          Padding(
                              padding: EdgeInsets.all(8.0), child: Text('')),
                          Padding(
                              padding: EdgeInsets.all(8.0), child: Text('')),
                          Padding(
                              padding: EdgeInsets.all(8.0), child: Text('')),
                          Padding(
                              padding: EdgeInsets.all(8.0), child: Text('')),
                          Padding(
                              padding: EdgeInsets.all(8.0), child: Text('')),
                          Padding(
                              padding: EdgeInsets.all(8.0), child: Text('')),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                              padding: EdgeInsets.all(8.0), child: Text('')),
                          Padding(
                              padding: EdgeInsets.all(8.0), child: Text('')),
                          Padding(
                              padding: EdgeInsets.all(8.0), child: Text('')),
                          Padding(
                              padding: EdgeInsets.all(8.0), child: Text('')),
                          Padding(
                              padding: EdgeInsets.all(8.0), child: Text('')),
                          Padding(
                              padding: EdgeInsets.all(8.0), child: Text('')),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      children: [
                        Expanded(child: buildButton(0, 'Insert')),
                        const SizedBox(width: 10),
                        Expanded(child: buildButton(1, 'Edit')),
                        const SizedBox(width: 10),
                        Expanded(child: buildButton(2, 'Delete')),
                        const SizedBox(width: 10),
                        Expanded(child: buildButton(3, 'Search')),
                        const SizedBox(width: 10),
                        Expanded(child: buildButton(4, 'Barcoad print')),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      children: [
                        Expanded(child: buildButton(5, 'First')),
                        const SizedBox(width: 10),
                        Expanded(child: buildButton(6, 'Last')),
                        const SizedBox(width: 10),
                        Expanded(child: buildButton(7, 'Next')),
                        const SizedBox(width: 10),
                        Expanded(child: buildButton(8, 'Previous')),
                        const SizedBox(width: 10),
                        Expanded(child: buildButton(9, 'Exit')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInputColumn(String label) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textScreen(
            label,
            16,
            appColors.primaryColor,
            FontWeight.w500,
            TextAlign.left,
          ),
          buildTextField(label),
        ],
      ),
    );
  }

  Widget buildButton(int index, String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
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
              selectedIndex == index
                  ? appColors.whiteColor
                  : appColors.primaryColor,
              FontWeight.w500,
              TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
