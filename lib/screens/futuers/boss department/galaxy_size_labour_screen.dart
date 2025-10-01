import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_textfild.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/text_screen.dart';

class GalaxySizeLabourScreen extends StatefulWidget {
  const GalaxySizeLabourScreen({super.key});

  @override
  State<GalaxySizeLabourScreen> createState() => _GalaxySizeLabourScreenState();
}

class _GalaxySizeLabourScreenState extends State<GalaxySizeLabourScreen> {
  List<Map<String, String>> forms = [
    {
      '': '',
      'Serial No': '',
      'Size 1': '',
      'Size 2': '',
      'Labour': '',
      'Process Type': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CommonDialog(
      width: 880,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          titlebar(() => Navigator.pop(context)),
          Container(
            width: double.infinity,
            color: Appcolor().whiteColor,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: textScreen1(
              'Searching Forms...',
              20,
              Appcolor().primaryColor,
              FontWeight.w600,
            ),
          ),
          Container(
            width: double.infinity,
            color: Appcolor().primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textScreen1('Enter Your Search Name', 13, Appcolor().whiteColor,
                    FontWeight.w400),
                const SizedBox(height: 8),
                buildTextField2('label'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Table(
              border: TableBorder.all(color: appColors.tabelcolor),
              columnWidths: {
                0: FlexColumnWidth(0.5),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
                3: FlexColumnWidth(1),
                4: FlexColumnWidth(1),
                5: FlexColumnWidth(1),
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
                      child: Text('Serial No.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Size 1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Size 2',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Labour',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Process Type',
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
                    Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
