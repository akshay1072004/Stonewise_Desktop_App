import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class GalaxyStoneScreen extends StatefulWidget {
  const GalaxyStoneScreen({super.key});

  @override
  State<GalaxyStoneScreen> createState() => _GalaxyStoneScreenState();
}

class _GalaxyStoneScreenState extends State<GalaxyStoneScreen> {
  String? selectedValue;
  String? selectedValue1;
  String? selectedValue2;
  String? selectedShape;
  String? selectedColor;
  String? selectedClarity;
  String? selectedCut;
  String? selectedCent;

  int selectedIndex = 0;

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
            textScreen('Galaxy Stone Report', 25, appColors.primaryColor,
                FontWeight.w500, TextAlign.center),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Select Any One?',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'Normal Report',
                                'Kapan Master Report',
                                'Remap-Normal Report',
                                'Planner Machine No Wise Compair Report',
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
                      SizedBox(width: 5),
                      Expanded(
                        flex: 20,
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
                                'ALL',
                                'COLOR  ',
                                'CLARITY',
                                'DIAMETER',
                              ],
                              initalValue: selectedValue1,
                              onChange: (p0) {
                                setState(() {
                                  selectedValue1 = p0;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 20,
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
                                'SARIN',
                                'GALAXY  ',
                                'MANGNUS',
                                'SYMBOL',
                              ],
                              initalValue: selectedValue2,
                              onChange: (p0) {
                                setState(() {
                                  selectedValue2 = p0;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Kapan No.')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn('Main Kapan No.')),
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
                              'Shape',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'SARIN',
                                'GALAXY',
                                'MANGNUS',
                                'SYMBOL',
                              ],
                              initalValue: selectedShape,
                              onChange: (p0) {
                                setState(() {
                                  selectedShape = p0;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Color',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'D',
                                'E',
                                'F',
                                'G',
                              ],
                              initalValue: selectedColor,
                              onChange: (p0) {
                                setState(() {
                                  selectedColor = p0;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
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
                              'Clarity',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'IF',
                                'vvsl',
                                'vvs2',
                                'VSI',
                              ],
                              initalValue: selectedClarity,
                              onChange: (p0) {
                                setState(() {
                                  selectedClarity = p0;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cut',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                'EX',
                                'VG',
                                'GD',
                                '.',
                              ],
                              initalValue: selectedCut,
                              onChange: (p0) {
                                setState(() {
                                  selectedCut = p0;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Galaxy(Labour)Size')),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cent Type',
                              style: TextStyle(
                                color: appColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            CommonDropdownButton(
                              items: [
                                '0.001 To 0.0039',
                                '0.004 To 0.0049',
                                '0.005 To 0.0059',
                                '0.006 To 0.0069',
                              ],
                              initalValue: selectedCent,
                              onChange: (p0) {
                                setState(() {
                                  selectedCent = p0;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Diameter(W)')),
                      SizedBox(width: 5),
                      Text('To',
                          style: TextStyle(
                              color: appColors.primaryColor, fontSize: 18)),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn('Diameter(L)')),
                      SizedBox(width: 5),
                      Text('To',
                          style: TextStyle(
                              color: appColors.primaryColor, fontSize: 18)),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Exp./ Polish Cts.')),
                      SizedBox(width: 5),
                      Text('To',
                          style: TextStyle(
                              color: appColors.primaryColor, fontSize: 18)),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn('Lot No.')),
                      SizedBox(width: 5),
                      Text('To',
                          style: TextStyle(
                              color: appColors.primaryColor, fontSize: 18)),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('')),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Machine/Lcd no.')),
                      SizedBox(width: 5),
                      Text('To',
                          style: TextStyle(
                              color: appColors.primaryColor, fontSize: 18)),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('')),
                      SizedBox(width: 10),
                      Expanded(child: buildInputColumn5('Date')),
                      SizedBox(width: 5),
                      Text('To',
                          style: TextStyle(
                              color: appColors.primaryColor, fontSize: 18)),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn5('')),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 120),
                    child: Row(
                      children: [
                        Expanded(child: buildButton(1, 'Refresh Kapan')),
                        SizedBox(width: 10),
                        Expanded(child: buildButton(2, 'Report')),
                        SizedBox(width: 10),
                        Expanded(child: buildButton(3, 'Sticker Print')),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 120),
                    child: Row(
                      children: [
                        Expanded(child: buildButton(4, 'Refresh Doller')),
                        SizedBox(width: 10),
                        Expanded(child: buildButton(5, 'Reset')),
                        SizedBox(width: 10),
                        Expanded(child: buildButton(6, 'Sticker Gujarati')),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
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
