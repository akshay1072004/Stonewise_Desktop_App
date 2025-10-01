import 'package:flutter/material.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/common_textfild.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/text_screen.dart';

class EmployeeDailyEntryScreen extends StatefulWidget {
  const EmployeeDailyEntryScreen({super.key});

  @override
  State<EmployeeDailyEntryScreen> createState() =>
      _EmployeeDailyEntryScreenState();
}

class _EmployeeDailyEntryScreenState extends State<EmployeeDailyEntryScreen> {
  int selectedIndex = 0;

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CommonDialog(
        child: Column(
          children: [
            titlebar(
              () {
                Navigator.pop(context);
              },
            ),
            textScreen('Employee Daily Entry', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(flex: 50, child: buildInputColumn2('No', '1')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildInputColumn5('Date')),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 30,
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
                                'None',
                                '1 To  Jump Save',
                                '2 To  Jump Save',
                                '3 To  Jump Save',
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
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: buildInputColumn2(
                              'Department Name', 'Gelexy Department')),
                      SizedBox(width: 5),
                      Expanded(
                          child: buildInputColumn2('Manager Name', 'fgegt')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: buildInputColumn2('Employee', 'gggcdcdcdc')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn2('', 'ff')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('1',
                          style: TextStyle(
                              color: appColors.primaryColor, fontSize: 18)),
                      SizedBox(width: 5),
                      Expanded(flex: 40, child: buildInputColumn2('', 'cd')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildInputColumn2('Pcs.', '1')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 20, child: buildInputColumn2('Salary', '1')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 20, child: buildInputColumn2('Amount', '1.00')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('2',
                          style: TextStyle(
                              color: appColors.primaryColor, fontSize: 18)),
                      SizedBox(width: 5),
                      Expanded(flex: 40, child: buildTextField3('', 'jm..')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '4')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '14')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '56.00')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('3',
                          style: TextStyle(
                              color: appColors.primaryColor, fontSize: 18)),
                      SizedBox(width: 5),
                      Expanded(flex: 40, child: buildTextField3('', 'bfgb')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '1')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '1')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '1.00')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('4',
                          style: TextStyle(
                              color: appColors.primaryColor, fontSize: 18)),
                      SizedBox(width: 5),
                      Expanded(flex: 40, child: buildTextField3('', 'vgfr')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '0')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '0.4')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '0.00')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('5',
                          style: TextStyle(
                              color: appColors.primaryColor, fontSize: 18)),
                      SizedBox(width: 5),
                      Expanded(flex: 40, child: buildTextField3('', 'vf')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '0')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '0.4')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '0.00')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('6',
                          style: TextStyle(
                              color: appColors.primaryColor, fontSize: 18)),
                      SizedBox(width: 5),
                      Expanded(flex: 40, child: buildTextField3('', 'fv')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '14')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '4')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '56.00')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('7',
                          style: TextStyle(
                              color: appColors.primaryColor, fontSize: 18)),
                      SizedBox(width: 5),
                      Expanded(flex: 40, child: buildTextField3('', 'vfr')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '14')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '14')),
                      SizedBox(width: 5),
                      Expanded(flex: 20, child: buildTextField3('', '196.00')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 40, child: buildInputColumn2('Remark', '.')),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 20, child: buildInputColumn2('Total', '34.00')),
                      SizedBox(width: 150),
                      Spacer(),
                      Expanded(
                          flex: 20, child: buildInputColumn2('', '310.00')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: buildbotton(1, 'insert')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(2, 'Edit')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(3, 'Delete')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(4, 'search Dep')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(5, 'Bulk Entry')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: buildbotton(6, 'First')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(7, 'Last')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(8, 'Next')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(9, 'Previous')),
                        SizedBox(width: 5),
                        Expanded(child: buildbotton(10, 'Exit')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10)
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
                      // selectedButton == label ? Colors.white : appColors.blueColor,
                      selectedIndex == index
                          ? appColors.whiteColor
                          : appColors.primaryColor,
                      FontWeight.w500,
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
