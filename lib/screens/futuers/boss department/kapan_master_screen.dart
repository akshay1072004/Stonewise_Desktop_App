import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class KapanMasterScreen extends StatefulWidget {
  const KapanMasterScreen({super.key});

  @override
  State<KapanMasterScreen> createState() => _KapanMasterScreenState();
}

class _KapanMasterScreenState extends State<KapanMasterScreen> {
  String? selectedValue;
  int selectedIndex = 0;
  final List<String> items = ['Item 1', 'Item 2', 'Item 3'];

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  textScreen('Kapan Master', 25, appColors.primaryColor,
                      FontWeight.w600, TextAlign.center),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: buildInputColumn('Serial No.'),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Main Kapan No.')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn('Kapan No.')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rough Name',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'item 1',
                                'item 2',
                                'item 3',
                                'item 4',
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
                      Expanded(child: buildInputColumn('Kapan Weight'))
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Rough Price 5/ Rs.')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn('Mfg Labour 5/ Rs.')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Extra Rate 5/ Rs.')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn('Remarks')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 100, right: 100),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(0, 'Insert')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(1, 'Edit')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(2, 'Delete')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(3, 'Search Kap.')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(4, 'Ser Ro. Name')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(5, 'Ser M. Kap.')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 100, right: 100),
                    child: Row(
                      children: [
                        Expanded(child: buildbotton(6, 'First')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(7, 'Last')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(8, 'Next')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(9, 'Previous')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(10, 'Excel Imp')),
                        SizedBox(width: 10),
                        Expanded(child: buildbotton(11, 'Exit')),
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
