// import 'package:flutter/material.dart';
// import 'package:stonewise/utilites/common_colour.dart';
// import 'package:stonewise/utilites/common_textfild.dart';
// import 'package:stonewise/utilites/custom_titilebar.dart';
// import 'package:stonewise/utilites/dilog_screen.dart';
// import 'package:stonewise/utilites/text_screen.dart';

// class Diamiterscreen extends StatefulWidget {
//   const Diamiterscreen({super.key});

//   @override
//   State<Diamiterscreen> createState() => _DiamiterscreenState();
// }

// class _DiamiterscreenState extends State<Diamiterscreen> {
//   List<Map<String, dynamic>> forms = [
//     {
//       '': '',
//       'Serial No': '1',
//       'Diameter 1': '0.85',
//       'Diameter 2': '1',
//       'Mix Diameter': '0.85 to 1.00',
//       'Mix Charni': '-00',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '2',
//       'Diameter 1': '1.01',
//       'Diameter 2': '1.05',
//       'Mix Diameter': '1.01 to 1.05',
//       'Mix Charni': '-00',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '3',
//       'Diameter 1': '1.06',
//       'Diameter 2': '1.1',
//       'Mix Diameter': '1.06 to 1.1',
//       'Mix Charni': '+00 to -0',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '4',
//       'Diameter 1': '1.11',
//       'Diameter 2': '1.25',
//       'Mix Diameter': '1.11 to 1.25',
//       'Mix Charni': '+0 to -2',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '5',
//       'Diameter 1': '1.26',
//       'Diameter 2': '1.35',
//       'Mix Diameter': '1.26 to 1.35',
//       'Mix Charni': '+2.0 to -3.0',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '6',
//       'Diameter 1': '1.36',
//       'Diameter 2': '1.6',
//       'Mix Diameter': '1.36 to 1.6',
//       'Mix Charni': '+3.0 to -5.0',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '7',
//       'Diameter 1': '1.56',
//       'Diameter 2': '1.8',
//       'Mix Diameter': '1.56 to 1.8',
//       'Mix Charni': '+5.0 to -6.0',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '8',
//       'Diameter 1': '1.61',
//       'Diameter 2': '2.1',
//       'Mix Diameter': '1.61 to 2.1',
//       'Mix Charni': '+6.0 to -6.5',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '9',
//       'Diameter 1': '1.81',
//       'Diameter 2': '2.3',
//       'Mix Diameter': '1.81 to 2.3',
//       'Mix Charni': '+6.5 to -8.0',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '10',
//       'Diameter 1': '2.11',
//       'Diameter 2': '2.7',
//       'Mix Diameter': '2.11 to 2.7',
//       'Mix Charni': '+8.0 to -9.0',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '11',
//       'Diameter 1': '2.31',
//       'Diameter 2': '2.9',
//       'Mix Diameter': '2.31 to 2.9',
//       'Mix Charni': '+9.0 to -11.0',
//       'Alert Diameter 1': ''
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return CommonDialog(
//       child: Column(
//         children: [
//           titlebar(() {
//             Navigator.pop(context);
//           }),
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: Appcolor().whiteColor,
//             ),
//             child: Row(
//               children: [
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                   child: textScreen1('Searching Forms...', 20,
//                       Appcolor().primaryColor, FontWeight.w600),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: appColors.primaryColor,
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   textScreen1('Enter Your Search Name', 13,
//                       appColors.whiteColor, FontWeight.w400),
//                   buildTextField2('label')
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:stonewise/utilites/common_colour.dart';
// import 'package:stonewise/utilites/common_textfild.dart';
// import 'package:stonewise/utilites/custom_titilebar.dart';
// import 'package:stonewise/utilites/dilog_screen.dart';
// import 'package:stonewise/utilites/text_screen.dart';

// class Diamiterscreen extends StatefulWidget {
//   const Diamiterscreen({super.key});

//   @override
//   State<Diamiterscreen> createState() => _DiamiterscreenState();
// }

// class _DiamiterscreenState extends State<Diamiterscreen> {
//   List<Map<String, dynamic>> forms = [
//     {
//       '': '',
//       'Serial No': '1',
//       'Diameter 1': '0.85',
//       'Diameter 2': '1',
//       'Mix Diameter': '0.85 to 1.00',
//       'Mix Charni': '-00',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '2',
//       'Diameter 1': '1.01',
//       'Diameter 2': '1.05',
//       'Mix Diameter': '1.01 to 1.05',
//       'Mix Charni': '-00',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '3',
//       'Diameter 1': '1.06',
//       'Diameter 2': '1.1',
//       'Mix Diameter': '1.06 to 1.1',
//       'Mix Charni': '+00 to -0',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '4',
//       'Diameter 1': '1.11',
//       'Diameter 2': '1.25',
//       'Mix Diameter': '1.11 to 1.25',
//       'Mix Charni': '+0 to -2',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '5',
//       'Diameter 1': '1.26',
//       'Diameter 2': '1.35',
//       'Mix Diameter': '1.26 to 1.35',
//       'Mix Charni': '+2.0 to -3.0',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '6',
//       'Diameter 1': '1.36',
//       'Diameter 2': '1.6',
//       'Mix Diameter': '1.36 to 1.6',
//       'Mix Charni': '+3.0 to -5.0',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '7',
//       'Diameter 1': '1.56',
//       'Diameter 2': '1.8',
//       'Mix Diameter': '1.56 to 1.8',
//       'Mix Charni': '+5.0 to -6.0',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '8',
//       'Diameter 1': '1.61',
//       'Diameter 2': '2.1',
//       'Mix Diameter': '1.61 to 2.1',
//       'Mix Charni': '+6.0 to -6.5',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '9',
//       'Diameter 1': '1.81',
//       'Diameter 2': '2.3',
//       'Mix Diameter': '1.81 to 2.3',
//       'Mix Charni': '+6.5 to -8.0',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '10',
//       'Diameter 1': '2.11',
//       'Diameter 2': '2.7',
//       'Mix Diameter': '2.11 to 2.7',
//       'Mix Charni': '+8.0 to -9.0',
//       'Alert Diameter 1': ''
//     },
//     {
//       '': '',
//       'Serial No': '11',
//       'Diameter 1': '2.31',
//       'Diameter 2': '2.9',
//       'Mix Diameter': '2.31 to 2.9',
//       'Mix Charni': '+9.0 to -11.0',
//       'Alert Diameter 1': ''
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return CommonDialog(
//       child: Column(
//         children: [
//           titlebar(() {
//             Navigator.pop(context);
//           }),
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: Appcolor().whiteColor,
//             ),
//             child: Row(
//               children: [
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                   child: textScreen1(
//                     'Searching Forms...',
//                     20,
//                     Appcolor().primaryColor,
//                     FontWeight.w600,
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: appColors.primaryColor,
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   textScreen1('Enter Your Search Name', 13,
//                       appColors.whiteColor, FontWeight.w400),
//                   buildTextField2('label'),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: DataTable(
//                 border: TableBorder.all(color: appColors.borderColor),
//                 headingRowColor:
//                     MaterialStateProperty.all(appColors.primaryColor),
//                 headingTextStyle: TextStyle(color: appColors.whiteColor),
//                 columnSpacing: 20,
//                 columns: [
//                   DataColumn(label: Text('')),
//                   DataColumn(label: Text('Serial No')),
//                   DataColumn(label: Text('Diameter 1')),
//                   DataColumn(label: Text('Diameter 2')),
//                   DataColumn(label: Text('Mix Diameter')),
//                   DataColumn(label: Text('Mix Charni')),
//                   DataColumn(label: Text('Alert Diameter 1')),
//                 ],
//                 rows: forms.map((data) {
//                   return DataRow(cells: [
//                     DataCell(Text(data[''] ?? '')),
//                     DataCell(Text(data['Serial No'] ?? '')),
//                     DataCell(Text(data['Diameter 1'] ?? '')),
//                     DataCell(Text(data['Diameter 2'] ?? '')),
//                     DataCell(Text(data['Mix Diameter'] ?? '')),
//                     DataCell(Text(data['Mix Charni'] ?? '')),
//                     DataCell(Text(data['Alert Diameter 1'] ?? '')),
//                   ]);
//                 }).toList(),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_textfild.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/text_screen.dart';

class Diamiterscreen extends StatefulWidget {
  const Diamiterscreen({super.key});

  @override
  State<Diamiterscreen> createState() => _DiamiterscreenState();
}

class _DiamiterscreenState extends State<Diamiterscreen> {
  List<Map<String, String>> forms = [
    {
      '': '',
      'Serial No': '1',
      'Diameter 1': '0.85',
      'Diameter 2': '1',
      'Mix Diameter': '0.85 to 1.00',
      'Mix Charni': '-00',
      'Alert Diameter 1': ''
    },
    {
      '': '',
      'Serial No': '2',
      'Diameter 1': '1.01',
      'Diameter 2': '1.05',
      'Mix Diameter': '1.01 to 1.05',
      'Mix Charni': '-00',
      'Alert Diameter 1': ''
    },
    {
      '': '',
      'Serial No': '3',
      'Diameter 1': '1.06',
      'Diameter 2': '1.1',
      'Mix Diameter': '1.06 to 1.1',
      'Mix Charni': '+00 to -0',
      'Alert Diameter 1': ''
    },
    {
      '': '',
      'Serial No': '4',
      'Diameter 1': '1.11',
      'Diameter 2': '1.25',
      'Mix Diameter': '1.11 to 1.25',
      'Mix Charni': '+0 to -2',
      'Alert Diameter 1': ''
    },
    {
      '': '',
      'Serial No': '5',
      'Diameter 1': '1.26',
      'Diameter 2': '1.35',
      'Mix Diameter': '1.26 to 1.35',
      'Mix Charni': '+2.0 to -3.0',
      'Alert Diameter 1': ''
    },
    {
      '': '',
      'Serial No': '6',
      'Diameter 1': '1.36',
      'Diameter 2': '1.6',
      'Mix Diameter': '1.36 to 1.6',
      'Mix Charni': '+3.0 to -5.0',
      'Alert Diameter 1': ''
    },
    {
      '': '',
      'Serial No': '7',
      'Diameter 1': '1.56',
      'Diameter 2': '1.8',
      'Mix Diameter': '1.56 to 1.8',
      'Mix Charni': '+5.0 to -6.0',
      'Alert Diameter 1': ''
    },
    {
      '': '',
      'Serial No': '8',
      'Diameter 1': '1.61',
      'Diameter 2': '2.1',
      'Mix Diameter': '1.61 to 2.1',
      'Mix Charni': '+6.0 to -6.5',
      'Alert Diameter 1': ''
    },
    {
      '': '',
      'Serial No': '9',
      'Diameter 1': '1.81',
      'Diameter 2': '2.3',
      'Mix Diameter': '1.81 to 2.3',
      'Mix Charni': '+6.5 to -8.0',
      'Alert Diameter 1': ''
    },
    {
      '': '',
      'Serial No': '10',
      'Diameter 1': '2.11',
      'Diameter 2': '2.7',
      'Mix Diameter': '2.11 to 2.7',
      'Mix Charni': '+8.0 to -9.0',
      'Alert Diameter 1': ''
    },
    {
      '': '',
      'Serial No': '11',
      'Diameter 1': '2.31',
      'Diameter 2': '2.9',
      'Mix Diameter': '2.31 to 2.9',
      'Mix Charni': '+9.0 to -11.0',
      'Alert Diameter 1': ''
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
              0: FixedColumnWidth(70),
              1: FixedColumnWidth(110),
              2: FixedColumnWidth(110),
              3: FixedColumnWidth(110),
              4: FixedColumnWidth(150),
              5: FixedColumnWidth(150),
              6: FixedColumnWidth(150),
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
                    child: Text('Diameter 1',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Diameter 2',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Mix Diameter',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Mix Charni',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Alert Diameter 1',
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
                      child: Text(data['Diameter 1'] ?? ''),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data['Diameter 2'] ?? ''),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data['Mix Diameter'] ?? ''),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data['Mix Charni'] ?? ''),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data['Alert Diameter 1'] ?? ''),
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
