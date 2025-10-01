import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_textfild.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/text_screen.dart';

class PlanningPcsLabMasterScreen extends StatefulWidget {
  const PlanningPcsLabMasterScreen({super.key});

  @override
  State<PlanningPcsLabMasterScreen> createState() =>
      _PlanningPcsLabMasterScreenState();
}

class _PlanningPcsLabMasterScreenState
    extends State<PlanningPcsLabMasterScreen> {
  List<Map<String, String>> forms = [
    {
      '': '',
      'Serial No': '1',
      'Cent 1': '0.001',
      'Cent 2': '0.01',
      'Labour': '',
      'Hour Per Day': '',
      'Month Day': '',
      'Month  Day': ''
    },
    {
      '': '',
      'Serial No': '',
      'Cent 1': '',
      'Cent 2': '',
      'Labour': '',
      'Hour Per Day': '',
      'Month Day': '',
      'Month  Day': ''
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
              columnWidths: {
                0: FlexColumnWidth(0.5),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
                3: FlexColumnWidth(1),
                4: FlexColumnWidth(1),
                5: FlexColumnWidth(1),
                6: FlexColumnWidth(1),
                7: FlexColumnWidth(1),
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
                      child: Text('Cent 1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Cent 2',
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
                      child: Text('Houer Per Day',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Month Day',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Month Day',
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
                    Padding(padding: EdgeInsets.all(8.0), child: Text('1')),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('0.001')),
                    Padding(
                        padding: EdgeInsets.all(8.0), child: Text('0.0039')),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('2')),
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
