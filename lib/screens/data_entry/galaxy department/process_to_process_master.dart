// import 'package:flutter/material.dart';
// import 'package:stonewise/utilites/common_colour.dart';
// import 'package:stonewise/utilites/common_inputColumn.dart';
// import 'package:stonewise/utilites/custom_titilebar.dart';
// import 'package:stonewise/utilites/dilog_screen.dart';
// import 'package:stonewise/utilites/dropDown_button.dart';
// import 'package:stonewise/utilites/text_screen.dart';

// class ProcessToProcessMaster extends StatefulWidget {
//   const ProcessToProcessMaster({super.key});

//   @override
//   State<ProcessToProcessMaster> createState() => _ProcessToProcessMasterState();
// }

// class _ProcessToProcessMasterState extends State<ProcessToProcessMaster> {
//   int selectedIndex = 0;
//   String? selectedValue;
//   String? selectedFrom;
//   String? selectedProcess;

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: CommonDialog(
//         child: Column(
//           children: [
//             titlebar(
//               () {
//                 Navigator.pop(context);
//               },
//             ),
//             textScreen('Process to Process Master', 25, appColors.primaryColor,
//                 FontWeight.w600, TextAlign.center),
//             SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Expanded(child: buildInputColumn2('Serial No.', '1')),
//                       SizedBox(width: 5),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Department Name',
//                               style: TextStyle(
//                                 color: appColors.primaryColor,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             const SizedBox(height: 6),
//                             CommonDropdownButton(
//                               items: [
//                                 'Claving Department',
//                                 'Galaxy Department',
//                                 'Sarin Department',
//                                 'LS Department',
//                               ],
//                               initalValue: selectedValue,
//                               onChange: (p0) {
//                                 setState(() {
//                                   selectedValue = p0;
//                                 });
//                               },
//                             )
//                           ],
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'From Process',
//                               style: TextStyle(
//                                 color: appColors.primaryColor,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             const SizedBox(height: 6),
//                             CommonDropdownButton(
//                               items: [
//                                 'Galaxy',
//                                 'Sarin',
//                                 'LS',
//                                 '4P',
//                               ],
//                               initalValue: selectedFrom,
//                               onChange: (p0) {
//                                 setState(() {
//                                   selectedFrom = p0;
//                                 });
//                               },
//                             )
//                           ],
//                         ),
//                       ),
//                       SizedBox(width: 5),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'To Process',
//                               style: TextStyle(
//                                 color: appColors.primaryColor,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             const SizedBox(height: 6),
//                             CommonDropdownButton(
//                               items: [
//                                 'Claving',
//                                 'Galaxy',
//                                 'Sarin',
//                                 'LS',
//                               ],
//                               initalValue: selectedProcess,
//                               onChange: (p0) {
//                                 setState(() {
//                                   selectedProcess = p0;
//                                 });
//                               },
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 10),
//                   Container(
//                     height: 250,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: appColors.outlineColor)),
//                     child: SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Scrollbar(
//                         thumbVisibility: true,
//                         thickness: 6,
//                         radius: const Radius.circular(10),
//                         child: Table(
//                           border: TableBorder.all(color: appColors.tabelcolor),
//                           columnWidths: {
//                             0: FixedColumnWidth(80),
//                             1: FixedColumnWidth(190),
//                             2: FixedColumnWidth(190),
//                             3: FixedColumnWidth(190),
//                             4: FixedColumnWidth(190),
//                             5: FixedColumnWidth(190),
//                           },
//                           children: [
//                             TableRow(
//                               decoration:
//                                   BoxDecoration(color: appColors.primaryColor),
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsets.all(8.0),
//                                   child: Text(
//                                     '',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.all(8.0),
//                                   child: Center(
//                                     child: Text('SrNo',
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           color: Color(0xffffffff),
//                                         )),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.all(8.0),
//                                   child: Center(
//                                     child: Text('Department',
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           color: Color(0xffffffff),
//                                         )),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.all(8.0),
//                                   child: Center(
//                                     child: Text('From Process',
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           color: Color(0xffffffff),
//                                         )),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.all(8.0),
//                                   child: Center(
//                                     child: Text('To  Process',
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           color: Color(0xffffffff),
//                                         )),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.all(8.0),
//                                   child: Center(
//                                     child: Text('LotRecStatus',
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           color: Color(0xffffffff),
//                                         )),
//                                   ),
//                                 ),
//                               ],
//                             ),

//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 150),
//                     child: Row(
//                       children: [
//                         Column(
//                           children: [
//                             Row(
//                               children: [
//                                 buildbotton(
//                                     index: 0, text: 'Insert', width: 100),
//                                 SizedBox(width: 10),
//                                 buildbotton(index: 1, text: 'Edit', width: 100),
//                                 SizedBox(width: 10),
//                                 buildbotton(
//                                     index: 2, text: 'Delete', width: 100),
//                                 SizedBox(width: 10),
//                                 buildbotton(
//                                     index: 3, text: 'Search', width: 100),
//                               ],
//                             ),
//                             SizedBox(height: 10),
//                             Row(
//                               children: [
//                                 buildbotton(
//                                     index: 4, text: 'First', width: 100),
//                                 SizedBox(width: 10),
//                                 buildbotton(index: 5, text: 'Last', width: 100),
//                                 SizedBox(width: 10),
//                                 buildbotton(index: 6, text: 'Next', width: 100),
//                                 SizedBox(width: 10),
//                                 buildbotton(
//                                     index: 7, text: 'Previous', width: 100),
//                               ],
//                             ),
//                           ],
//                         ),
//                         SizedBox(width: 10),
//                         buildbotton(
//                             index: 8, text: "Exit", width: 100, height: 85)
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildbotton(
//       {int? index, String? text, double? width, double? height}) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedIndex = index!;
//         });
//       },
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Center(
//             child: Container(
//               width: width,
//               // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//               height: height ?? 40,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(4),
//                 color: selectedIndex == index
//                     ? appColors.primaryColor
//                     : Colors.transparent,
//                 border: Border.all(color: appColors.primaryColor),
//               ),
//               child: Center(
//                 child: FittedBox(
//                   fit: BoxFit.scaleDown,
//                   child: textScreen(
//                       text!,
//                       18,
//                       // selectedButton == label ? Colors.white : appColors.blueColor,
//                       selectedIndex == index
//                           ? appColors.whiteColor
//                           : appColors.primaryColor,
//                       FontWeight.w500,
//                       TextAlign.center),
//                 ),
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
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class ProcessToProcessMaster extends StatefulWidget {
  const ProcessToProcessMaster({super.key});

  @override
  State<ProcessToProcessMaster> createState() => _ProcessToProcessMasterState();
}

class _ProcessToProcessMasterState extends State<ProcessToProcessMaster> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedFrom;
  String? selectedProcess;

  late ScrollController _horizontalScroll;

  @override
  void initState() {
    super.initState();
    _horizontalScroll = ScrollController();
  }

  @override
  void dispose() {
    _horizontalScroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CommonDialog(
        child: Column(
          children: [
            titlebar(() {
              Navigator.pop(context);
            }),
            textScreen(
              'Process to Process Master',
              25,
              appColors.primaryColor,
              FontWeight.w600,
              TextAlign.center,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: buildInputColumn2('Serial No.', '1')),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Department Name',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Claving Department',
                                'Galaxy Department',
                                'Sarin Department',
                                'LS Department',
                              ],
                              initalValue: selectedValue,
                              onChange: (p0) {
                                setState(() {
                                  selectedValue = p0;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'From Process',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: ['Galaxy', 'Sarin', 'LS', '4P'],
                              initalValue: selectedFrom,
                              onChange: (p0) {
                                setState(() {
                                  selectedFrom = p0;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'To Process',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: ['Claving', 'Galaxy', 'Sarin', 'LS'],
                              initalValue: selectedProcess,
                              onChange: (p0) {
                                setState(() {
                                  selectedProcess = p0;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: appColors.outlineColor),
                    ),
                    child: Scrollbar(
                      controller: _horizontalScroll,
                      thumbVisibility: true,
                      thickness: 6,
                      radius: const Radius.circular(10),
                      child: SingleChildScrollView(
                        controller: _horizontalScroll,
                        scrollDirection: Axis.horizontal,
                        child: Table(
                          border: TableBorder.all(color: appColors.tabelcolor),
                          columnWidths: const {
                            0: FixedColumnWidth(80),
                            1: FixedColumnWidth(190),
                            2: FixedColumnWidth(190),
                            3: FixedColumnWidth(190),
                            4: FixedColumnWidth(190),
                            5: FixedColumnWidth(190),
                          },
                          children: [
                            TableRow(
                              decoration:
                                  BoxDecoration(color: appColors.primaryColor),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Center(
                                    child: Text(
                                      'SrNo',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Center(
                                    child: Text(
                                      'Department',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Center(
                                    child: Text(
                                      'From Process',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Center(
                                    child: Text(
                                      'To Process',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Center(
                                    child: Text(
                                      'LotRecStatus',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
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
                                const SizedBox(width: 10),
                                buildbotton(index: 1, text: 'Edit', width: 100),
                                const SizedBox(width: 10),
                                buildbotton(
                                    index: 2, text: 'Delete', width: 100),
                                const SizedBox(width: 10),
                                buildbotton(
                                    index: 3, text: 'Search', width: 100),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                buildbotton(
                                    index: 4, text: 'First', width: 100),
                                const SizedBox(width: 10),
                                buildbotton(index: 5, text: 'Last', width: 100),
                                const SizedBox(width: 10),
                                buildbotton(index: 6, text: 'Next', width: 100),
                                const SizedBox(width: 10),
                                buildbotton(
                                    index: 7, text: 'Previous', width: 100),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        buildbotton(
                            index: 8, text: "Exit", width: 100, height: 85),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildbotton({
    int? index,
    String? text,
    double? width,
    double? height,
  }) {
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
                    selectedIndex == index
                        ? appColors.whiteColor
                        : appColors.primaryColor,
                    FontWeight.w500,
                    TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
