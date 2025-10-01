import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_textfild.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/text_screen.dart';

class CutColorCleartyScreen extends StatefulWidget {
  const CutColorCleartyScreen({super.key});

  @override
  State<CutColorCleartyScreen> createState() => _CutColorCleartyScreenState();
}

class _CutColorCleartyScreenState extends State<CutColorCleartyScreen> {
  List<Map<String, String>> forms = [
    {
      '': '',
      'Serial No': '1',
      'Color': 'D',
      'Quality': 'IF',
      'Cut': 'EX',
      'Polish': 'EX',
      'Synentry': 'EX',
      'Florocent': 'None',
      'Tension': '0'
    },
    {
      '': '',
      'Serial No': '2',
      'Color': 'E',
      'Quality': 'VVS1',
      'Cut': 'VG',
      'Polish': 'VG',
      'Synentry': 'VG',
      'Florocent': 'Int',
      'Tension': '1'
    },
    {
      '': '',
      'Serial No': '3',
      'Color': 'F',
      'Quality': 'VVS2',
      'Cut': 'GD',
      'Polish': 'GD',
      'Synentry': 'GD',
      'Florocent': 'Med',
      'Tension': '3'
    },
    {
      '': '',
      'Serial No': '4',
      'Color': 'G',
      'Quality': 'VS1',
      'Cut': '.',
      'Polish': '.',
      'Synentry': '.',
      'Florocent': 'Stg',
      'Tension': '4'
    },
    {
      '': '',
      'Serial No': '5',
      'Color': 'H',
      'Quality': 'VS2',
      'Cut': '.',
      'Polish': '.',
      'Synentry': '.',
      'Florocent': '.',
      'Tension': '5'
    },
    {
      '': '',
      'Serial No': '6',
      'Color': 'I',
      'Quality': 'SI1',
      'Cut': '.',
      'Polish': '.',
      'Synentry': '.',
      'Florocent': '.',
      'Tension': '.'
    },
    {
      '': '',
      'Serial No': '7',
      'Color': 'J',
      'Quality': 'SI2',
      'Cut': '.',
      'Polish': '.',
      'Synentry': '.',
      'Florocent': '.',
      'Tension': '.'
    },
    {
      '': '',
      'Serial No': '8',
      'Color': 'K',
      'Quality': 'SI3',
      'Cut': '.',
      'Polish': '.',
      'Synentry': '.',
      'Florocent': '.',
      'Tension': '.'
    },
    {
      '': '',
      'Serial No': '9',
      'Color': 'L',
      'Quality': 'I1',
      'Cut': '.',
      'Polish': '.',
      'Synentry': '.',
      'Florocent': '.',
      'Tension': '.'
    },
    {
      '': '',
      'Serial No': '10',
      'Color': 'M',
      'Quality': 'I2',
      'Cut': '.',
      'Polish': '.',
      'Synentry': '.',
      'Florocent': '.',
      'Tension': '.'
    },
    {
      '': '',
      'Serial No': '11',
      'Color': 'None',
      'Quality': 'None',
      'Cut': 'None',
      'Polish': 'None',
      'Synentry': 'None',
      'Florocent': 'None',
      'Tension': 'None'
    },
    {
      '': '',
      'Serial No': '12',
      'Color': '',
      'Quality': '',
      'Cut': '',
      'Polish': '',
      'Synentry': '',
      'Florocent': '',
      'Tension': ''
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
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Table(
                  border: TableBorder.all(color: appColors.tabelcolor),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: const {
                    0: FixedColumnWidth(60),
                    1: FixedColumnWidth(100),
                    2: FixedColumnWidth(80),
                    3: FixedColumnWidth(100),
                    4: FixedColumnWidth(80),
                    5: FixedColumnWidth(100),
                    6: FixedColumnWidth(100),
                    7: FixedColumnWidth(100),
                    8: FixedColumnWidth(100),
                    9: FixedColumnWidth(100),
                  },
                  children: [
                    // Header row
                    TableRow(
                      decoration: BoxDecoration(color: appColors.primaryColor),
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Serial No',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Color',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Quality',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Cut',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Polish',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Synentry',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Florocent',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Tension',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    // Data rows
                    ...forms.map((data) {
                      return TableRow(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(data[''] ?? '')),
                          Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(data['Serial No'] ?? '')),
                          Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(data['Color'] ?? '')),
                          Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(data['Quality'] ?? '')),
                          Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(data['Cut'] ?? '')),
                          Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(data['Polish'] ?? '')),
                          Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(data['Synentry'] ?? '')),
                          Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(data['Florocent'] ?? '')),
                          Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(data['Tension'] ?? '')),
                        ],
                      );
                    }).toList(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
