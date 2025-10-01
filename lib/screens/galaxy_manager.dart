import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_button.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class GalaxyManager extends StatefulWidget {
  const GalaxyManager({super.key});

  @override
  State<GalaxyManager> createState() => _GalaxyManagerState();
}

class _GalaxyManagerState extends State<GalaxyManager> {
  int selectedIndex = 0;
  String? selectedValue;
  String? selectedValue1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CommonDialog(
        width: 900,
        child: Column(
          children: [
            titlebar(() => Navigator.pop(context)),
            textScreen('Galaxy Manager', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
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
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
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
                                '141',
                                '142  ',
                                '144',
                                '145',
                              ],
                              initalValue: selectedValue1,
                              onChange: (p0) {
                                setState(() {
                                  selectedValue1 = p0;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Kapan no')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Kapan no')),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Shape')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Clarity')),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Cent type')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Rendom Lot No.')),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(
                          flex: 53, child: buildInputColumn('Chacker Number')),
                      SizedBox(width: 5),
                      Expanded(flex: 25, child: buildInputColumn('Lot No.')),
                      textScreen('To', 20, appColors.primaryColor,
                          FontWeight.w500, TextAlign.center),
                      Expanded(flex: 25, child: buildInputColumn('')),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(
                          flex: 53, child: buildInputColumn('Mobile Number')),
                      SizedBox(width: 5),
                      Expanded(flex: 25, child: buildInputColumn('Date')),
                      textScreen('To', 20, appColors.primaryColor,
                          FontWeight.w500, TextAlign.center),
                      Expanded(flex: 25, child: buildInputColumn('')),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Ro Pcs')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Ro Cts')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Ro Size')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Ro-Po%')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Mac Pcs')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Mac Cts')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Mac Size')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Time: Pcs/Min')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildInputColumn('Po Pcs')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Po Cts')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Po Size')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Po%')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Dol-Rs/ Cts')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Dol - Rs')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Salary / Day')),
                      SizedBox(width: 5),
                      Expanded(child: buildInputColumn('Cost / Pcs')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildButton(1, 'DP Print')),
                      SizedBox(width: 5),
                      Expanded(child: buildButton(2, 'Report')),
                      SizedBox(width: 5),
                      Expanded(child: buildButton(3, 'Cancel')),
                      SizedBox(width: 5),
                      Expanded(child: buildButton(4, 'Reset')),
                      SizedBox(width: 5),
                      Expanded(child: buildButton(5, 'Sticker Print')),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: buildButton(6, 'Today Work')),
                      SizedBox(width: 5),
                      Expanded(child: buildButton(7, 'My Rank')),
                      SizedBox(width: 5),
                      Expanded(child: buildButton(8, 'Refresh')),
                      SizedBox(width: 5),
                      Expanded(child: buildButton(9, 'Error Sin')),
                      SizedBox(width: 5),
                      Expanded(child: buildButton(10, 'Search')),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                commonButton4('Live Kap.Status',
                    height: 30,
                    fontSize: 12,
                    color: appColors.primaryColor,
                    textColor: appColors.whiteColor),
                SizedBox(width: 1),
                commonButton4('Kapan Comps.',
                    height: 30,
                    fontSize: 12,
                    color: appColors.primaryColor,
                    textColor: appColors.whiteColor),
                SizedBox(width: 1),
                commonButton4('Plan Chack',
                    height: 30,
                    fontSize: 12,
                    color: appColors.primaryColor,
                    textColor: appColors.whiteColor),
                SizedBox(width: 1),
                commonButton4('S',
                    height: 30,
                    fontSize: 12,
                    color: appColors.primaryColor,
                    textColor: appColors.whiteColor),
                SizedBox(width: 1),
                commonButton4('Plan Mac Qr',
                    height: 30,
                    fontSize: 12,
                    color: appColors.primaryColor,
                    textColor: appColors.whiteColor),
                SizedBox(width: 1),
                commonButton4('S',
                    height: 30,
                    fontSize: 12,
                    color: appColors.primaryColor,
                    textColor: appColors.whiteColor),
                SizedBox(width: 1),
                commonButton4('Plan Sarin',
                    height: 30,
                    fontSize: 12,
                    color: appColors.primaryColor,
                    textColor: appColors.whiteColor),
                SizedBox(width: 1),
                commonButton4('S',
                    height: 30,
                    fontSize: 12,
                    color: appColors.primaryColor,
                    textColor: appColors.whiteColor),
                SizedBox(width: 1),
                commonButton4('Master Rep.',
                    height: 30,
                    fontSize: 12,
                    color: appColors.primaryColor,
                    textColor: appColors.whiteColor),
                SizedBox(width: 1),
                commonButton4('Kap.R-P%',
                    height: 30,
                    fontSize: 12,
                    color: appColors.primaryColor,
                    textColor: appColors.whiteColor),
                SizedBox(width: 1),
                commonButton4('Dia/Cent-Clarity',
                    height: 30,
                    fontSize: 12,
                    color: appColors.primaryColor,
                    textColor: appColors.whiteColor),
                SizedBox(width: 1),
                commonButton4('Pending Rep.',
                    height: 30,
                    fontSize: 12,
                    color: appColors.primaryColor,
                    textColor: appColors.whiteColor),
                SizedBox(width: 1),
              ],
            ),
            SizedBox(height: 4),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
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
    );
  }
}
