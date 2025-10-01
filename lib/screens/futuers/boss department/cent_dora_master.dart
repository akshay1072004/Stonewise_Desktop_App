import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_textfild.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/text_screen.dart';

class CentDoraMaster extends StatefulWidget {
  const CentDoraMaster({super.key});

  @override
  State<CentDoraMaster> createState() => _CentDoraMasterState();
}

class _CentDoraMasterState extends State<CentDoraMaster> {
  List<Map<String, String>> forms = [
    {
      '': '',
      'Serial No': '1',
      'Cent 1': '0.001',
      'Cent 2': '0.0039',
      'Cent 3': '',
      'Alert Cent 1': '',
      'Alert Cent 2': ''
    },
    {
      '': '',
      'Serial No': '2',
      'Cent 1': '0.004',
      'Cent 2': '0.0049',
      'Cent 3': '',
      'Alert Cent 1': '',
      'Alert Cent 2': ''
    },
    {
      '': '',
      'Serial No': '3',
      'Cent 1': '0.005',
      'Cent 2': '0.0059',
      'Cent 3': '',
      'Alert Cent 1': '',
      'Alert Cent 2': ''
    },
    {
      '': '',
      'Serial No': '4',
      'Cent 1': '0.006',
      'Cent 2': '0.0069',
      'Cent 3': '',
      'Alert Cent 1': '',
      'Alert Cent 2': ''
    },
    {
      '': '',
      'Serial No': '5',
      'Cent 1': '0.007',
      'Cent 2': '0.0079',
      'Cent 3': '',
      'Alert Cent 1': '',
      'Alert Cent 2': ''
    },
    {
      '': '',
      'Serial No': '6',
      'Cent 1': '0.008',
      'Cent 2': '0.0089',
      'Cent 3': '',
      'Alert Cent 1': '',
      'Alert Cent 2': ''
    },
    {
      '': '',
      'Serial No': '7',
      'Cent 1': '0.01',
      'Cent 2': '0.015',
      'Cent 3': '',
      'Alert Cent 1': '',
      'Alert Cent 2': ''
    },
    {
      '': '',
      'Serial No': '8',
      'Cent 1': '0.0151',
      'Cent 2': '0.017',
      'Cent 3': '',
      'Alert Cent 1': '',
      'Alert Cent 2': ''
    },
    {
      '': '',
      'Serial No': '9',
      'Cent 1': '0.0171',
      'Cent 2': '0.021',
      'Cent 3': '',
      'Alert Cent 1': '',
      'Alert Cent 2': ''
    },
    {
      '': '',
      'Serial No': '10',
      'Cent 1': '0.0211',
      'Cent 2': '0.035',
      'Cent 3': '',
      'Alert Cent 1': '',
      'Alert Cent 2': ''
    },
    {
      '': '',
      'Serial No': '11',
      'Cent 1': '0.0351',
      'Cent 2': '0.044',
      'Cent 3': '',
      'Alert Cent 1': '',
      'Alert Cent 2': ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CommonDialog(
      width: 880,
      child: Column(
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
          SizedBox(height: 10),
          Expanded(
              child: Table(
            border: TableBorder.all(color: appColors.tabelcolor),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {
              0: FixedColumnWidth(115),
              1: FixedColumnWidth(115),
              2: FixedColumnWidth(115),
              3: FixedColumnWidth(115),
              4: FixedColumnWidth(115),
              5: FixedColumnWidth(115),
              6: FixedColumnWidth(115),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(color: appColors.primaryColor),
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Serial No',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Cent 1',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Cent 2',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Cent 3',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Alert Cent 1',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Alert Cent 2',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),

              // Data Rows
              ...forms.map((data) {
                return TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data[''] ?? ''),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data['Serial No'] ?? ''),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data['Cent 1'] ?? ''),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data['Cent 2'] ?? ''),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data['Cent 3'] ?? ''),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data['Alert Cent 1'] ?? ''),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data['Alert Cenr 2'] ?? ''),
                    ),
                  ],
                );
              }).toList(),
            ],
          )),
        ],
      ),
    );
  }
}
