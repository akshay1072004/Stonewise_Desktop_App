// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:stonewise/screens/deshbord_screen_widget.dart';
// import 'package:stonewise/utilites/common_button.dart';
// import 'package:stonewise/utilites/common_colour.dart';
// import 'package:stonewise/utilites/custom_titilebar.dart';
// import 'package:stonewise/utilites/dilog_screen.dart';
// import 'package:stonewise/utilites/text_screen.dart';

// class DeshbordScreen extends StatefulWidget {
//   const DeshbordScreen({super.key});

//   @override
//   State<DeshbordScreen> createState() => _DeshbordScreenState();
// }

// class _DeshbordScreenState extends State<DeshbordScreen> {
//   String? selectedValue = 'Galaxy';
//   int selectedIndex = 0;

//   final List<String> items = [
//     'Sarain',
//     'Galaxy',
//     'Magnus',
//     'Symbol',
//     'QC',
//     'LC'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: CommonDialog(
//         width: 1100,
//         child: Column(
//           children: [
//             titlebar(
//               () {
//                 Navigator.pop(context);
//               },
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 10, vertical: 10),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         commonButton('Resat Data',
//                             color: appColors.primaryColor,
//                             textColor: appColors.whiteColor),
//                         SizedBox(width: 20),
//                         Stack(
//                           children: [
//                             Container(
//                               height: 40,
//                               width: 101,
//                               decoration: BoxDecoration(
//                                   border: Border.all(
//                                       color: appColors.outlineColor, width: 2),
//                                   borderRadius: BorderRadius.circular(6)),
//                               child: Positioned(
//                                 child: commonButton('Reset Null'),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(width: 80),
//                         textScreen('Dash Board', 25, appColors.primaryColor,
//                             FontWeight.w600, TextAlign.center),
//                         SizedBox(width: 80),
//                         Stack(
//                           children: [
//                             Container(
//                               height: 45,
//                               decoration: BoxDecoration(
//                                   border: Border.all(
//                                       color: appColors.outlineColor, width: 2),
//                                   borderRadius: BorderRadius.circular(8)),
//                               child: Positioned(
//                                 child: Container(
//                                   padding: EdgeInsets.symmetric(horizontal: 12),
//                                   decoration: BoxDecoration(
//                                     border: Border.all(
//                                         color: appColors.primaryColor),
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                   child: DropdownButtonHideUnderline(
//                                     child: DropdownButton<String>(
//                                       value: selectedValue,
//                                       onChanged: (String? newValue) {
//                                         setState(() {
//                                           selectedValue = newValue;
//                                         });
//                                       },
//                                       items: items
//                                           .map<DropdownMenuItem<String>>(
//                                               (String value) {
//                                         return DropdownMenuItem<String>(
//                                           value: value,
//                                           child: Text(
//                                             value,
//                                             style: TextStyle(fontSize: 14),
//                                           ),
//                                         );
//                                       }).toList(),
//                                       icon: SvgPicture.asset(
//                                           'assets/svg/down_arrow.svg'),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(width: 20),
//                         commonButton('Refresh Emp',
//                             color: appColors.primaryColor,
//                             textColor: appColors.whiteColor),
//                       ],
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           textScreen1(
//                             'Total',
//                             16,
//                             appColors.redColor,
//                             FontWeight.w600,
//                           ),
//                           SizedBox(height: 5),
//                           textScreen1(
//                             'Machine:',
//                             15,
//                             appColors.balkColor,
//                             FontWeight.w500,
//                           ),
//                           SizedBox(height: 5),
//                           textScreen1(
//                             'T. Kapan :',
//                             15,
//                             appColors.balkColor,
//                             FontWeight.w500,
//                           ),
//                           SizedBox(height: 5),
//                           textScreen1(
//                             'Ro.Pcs:',
//                             15,
//                             appColors.primaryColor,
//                             FontWeight.w500,
//                           ),
//                           SizedBox(height: 5),
//                           textScreen1(
//                             'Ro.Cts:',
//                             15,
//                             appColors.primaryColor,
//                             FontWeight.w500,
//                           ),
//                           SizedBox(height: 5),
//                           textScreen1(
//                             'Pol.Pcs:',
//                             15,
//                             appColors.greenColor,
//                             FontWeight.w500,
//                           ),
//                           SizedBox(height: 5),
//                           textScreen1(
//                             'Pol.Cts:',
//                             15,
//                             appColors.greenColor,
//                             FontWeight.w500,
//                           ),
//                           SizedBox(height: 5),
//                           textScreen1(
//                             'Doller:',
//                             15,
//                             appColors.blackColor,
//                             FontWeight.w500,
//                           ),
//                           SizedBox(height: 5),
//                         ],
//                       ),
//                       galaxy(),
//                       SizedBox(width: 25),
//                       sarin(),
//                       SizedBox(width: 25),
//                       qrcoad(),
//                       SizedBox(width: 25),
//                       Column(
//                         children: [
//                           textScreen1('Total', 24, appColors.blackColor,
//                               FontWeight.w500),
//                           textScreen1('R-R%', 14, appColors.blackColor,
//                               FontWeight.w300),
//                           SizedBox(height: 15),
//                           textScreen1(
//                               'Total', 24, appColors.redColor, FontWeight.w500),
//                           textScreen1(
//                               'R-R%', 14, appColors.redColor, FontWeight.w300),
//                         ],
//                       ),
//                       SizedBox(width: 25),
//                       galaxy(),
//                       SizedBox(width: 25),
//                       sarin(),
//                       SizedBox(width: 25),
//                       qrcoad(),
//                       SizedBox(width: 25),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           textScreen1(
//                             'Total',
//                             16,
//                             appColors.redColor,
//                             FontWeight.w600,
//                           ),
//                           SizedBox(height: 5),
//                           textScreen1(
//                             ': Machine',
//                             15,
//                             appColors.balkColor,
//                             FontWeight.w500,
//                           ),
//                           SizedBox(height: 5),
//                           textScreen1(
//                             ': T. Kapan',
//                             15,
//                             appColors.balkColor,
//                             FontWeight.w500,
//                           ),
//                           SizedBox(height: 5),
//                           textScreen1(
//                             ':Ro.Pcs',
//                             15,
//                             appColors.primaryColor,
//                             FontWeight.w500,
//                           ),
//                           SizedBox(height: 5),
//                           textScreen1(
//                             ':Ro.Cts',
//                             15,
//                             appColors.primaryColor,
//                             FontWeight.w500,
//                           ),
//                           SizedBox(height: 5),
//                           textScreen1(
//                             ':Pol.Pcs',
//                             15,
//                             appColors.greenColor,
//                             FontWeight.w500,
//                           ),
//                           SizedBox(height: 5),
//                           textScreen1(
//                             ':Pol.Cts',
//                             15,
//                             appColors.greenColor,
//                             FontWeight.w500,
//                           ),
//                           SizedBox(height: 5),
//                           textScreen1(
//                             ':Doller',
//                             15,
//                             appColors.blackColor,
//                             FontWeight.w500,
//                           ),
//                           SizedBox(height: 5),
//                         ],
//                       ),
//                     ],
//                   ),
//                   Divider(
//                     thickness: 3,
//                     color: Color(0xffDDDDDD),
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Expanded(flex: 30, child: leftDeshbord()),
//                       SizedBox(width: 20),
//                       Expanded(flex: 40, child: MiddleSection()),
//                       SizedBox(width: 20),
//                       Expanded(flex: 30, child: rightDeshbord()),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildbotton(
//     int index,
//     String text,
//   ) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedIndex = index;
//         });
//       },
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Center(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//               height: 40,
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
//                       text,
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
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stonewise/screens/deshbord_screen_widget.dart';
import 'package:stonewise/utilites/common_button.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/text_screen.dart';

class DeshbordScreen extends StatefulWidget {
  const DeshbordScreen({super.key});

  @override
  State<DeshbordScreen> createState() => _DeshbordScreenState();
}

class _DeshbordScreenState extends State<DeshbordScreen> {
  String? selectedValue = 'Galaxy';
  int selectedIndex = 0;

  final List<String> items = [
    'Sarain',
    'Galaxy',
    'Magnus',
    'Symbol',
    'QC',
    'LC'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CommonDialog(
        width: 1100,
        child: Column(
          children: [
            titlebar(() {
              Navigator.pop(context);
            }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        commonButton(
                          'Resat Data',
                          color: appColors.primaryColor,
                          textColor: appColors.whiteColor,
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 40,
                          width: 101,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: appColors.outlineColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: commonButton('Reset Null'),
                        ),
                        SizedBox(width: 80),
                        textScreen(
                          'Dash Board',
                          25,
                          appColors.primaryColor,
                          FontWeight.w600,
                          TextAlign.center,
                        ),
                        SizedBox(width: 80),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: appColors.outlineColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              border: Border.all(color: appColors.primaryColor),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: selectedValue,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedValue = newValue;
                                  });
                                },
                                items: items.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  );
                                }).toList(),
                                icon: SvgPicture.asset(
                                    'assets/svg/down_arrow.svg'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        commonButton(
                          'Refresh Emp',
                          color: appColors.primaryColor,
                          textColor: appColors.whiteColor,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textScreen1(
                            'Total',
                            16,
                            appColors.redColor,
                            FontWeight.w600,
                          ),
                          SizedBox(height: 5),
                          textScreen1(
                            'Machine:',
                            15,
                            appColors.balkColor,
                            FontWeight.w500,
                          ),
                          SizedBox(height: 5),
                          textScreen1(
                            'T. Kapan :',
                            15,
                            appColors.balkColor,
                            FontWeight.w500,
                          ),
                          SizedBox(height: 5),
                          textScreen1(
                            'Ro.Pcs:',
                            15,
                            appColors.primaryColor,
                            FontWeight.w500,
                          ),
                          SizedBox(height: 5),
                          textScreen1(
                            'Ro.Cts:',
                            15,
                            appColors.primaryColor,
                            FontWeight.w500,
                          ),
                          SizedBox(height: 5),
                          textScreen1(
                            'Pol.Pcs:',
                            15,
                            appColors.greenColor,
                            FontWeight.w500,
                          ),
                          SizedBox(height: 5),
                          textScreen1(
                            'Pol.Cts:',
                            15,
                            appColors.greenColor,
                            FontWeight.w500,
                          ),
                          SizedBox(height: 5),
                          textScreen1(
                            'Doller:',
                            15,
                            appColors.blackColor,
                            FontWeight.w500,
                          ),
                        ],
                      ),
                      galaxy(),
                      SizedBox(width: 25),
                      sarin(),
                      SizedBox(width: 25),
                      qrcoad(),
                      SizedBox(width: 25),
                      Column(
                        children: [
                          textScreen1(
                            'Total',
                            24,
                            appColors.blackColor,
                            FontWeight.w500,
                          ),
                          textScreen1(
                            'R-R%',
                            14,
                            appColors.blackColor,
                            FontWeight.w300,
                          ),
                          SizedBox(height: 15),
                          textScreen1(
                            'Total',
                            24,
                            appColors.redColor,
                            FontWeight.w500,
                          ),
                          textScreen1(
                            'R-R%',
                            14,
                            appColors.redColor,
                            FontWeight.w300,
                          ),
                        ],
                      ),
                      SizedBox(width: 25),
                      galaxy(),
                      SizedBox(width: 25),
                      sarin(),
                      SizedBox(width: 25),
                      qrcoad(),
                      SizedBox(width: 25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          textScreen1(
                            'Total',
                            16,
                            appColors.redColor,
                            FontWeight.w600,
                          ),
                          SizedBox(height: 5),
                          textScreen1(
                            ': Machine',
                            15,
                            appColors.balkColor,
                            FontWeight.w500,
                          ),
                          SizedBox(height: 5),
                          textScreen1(
                            ': T. Kapan',
                            15,
                            appColors.balkColor,
                            FontWeight.w500,
                          ),
                          SizedBox(height: 5),
                          textScreen1(
                            ':Ro.Pcs',
                            15,
                            appColors.primaryColor,
                            FontWeight.w500,
                          ),
                          SizedBox(height: 5),
                          textScreen1(
                            ':Ro.Cts',
                            15,
                            appColors.primaryColor,
                            FontWeight.w500,
                          ),
                          SizedBox(height: 5),
                          textScreen1(
                            ':Pol.Pcs',
                            15,
                            appColors.greenColor,
                            FontWeight.w500,
                          ),
                          SizedBox(height: 5),
                          textScreen1(
                            ':Pol.Cts',
                            15,
                            appColors.greenColor,
                            FontWeight.w500,
                          ),
                          SizedBox(height: 5),
                          textScreen1(
                            ':Doller',
                            15,
                            appColors.blackColor,
                            FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 3,
                    color: Color(0xffDDDDDD),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(flex: 30, child: leftDeshbord()),
                      SizedBox(width: 20),
                      Expanded(flex: 40, child: MiddleSection()),
                      SizedBox(width: 20),
                      Expanded(flex: 30, child: rightDeshbord()),
                    ],
                  ),
                ],
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
