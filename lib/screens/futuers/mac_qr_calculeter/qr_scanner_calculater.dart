import 'package:flutter/material.dart';

import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class QrScannerCalculater extends StatefulWidget {
  const QrScannerCalculater({super.key});

  @override
  State<QrScannerCalculater> createState() => _QrScannerCalculaterState();
}

class _QrScannerCalculaterState extends State<QrScannerCalculater> {
  int selectedIndex = 0;
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return CommonDialog(
      width: 880,
      child: Column(
        children: [
          titlebar(() => Navigator.pop(context)),
          textScreen('QR Calculator Report', 25, appColors.primaryColor,
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
                              '1022A',
                              '115.2.1',
                              '115.2.11',
                              '115.2.23',
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
                    Expanded(child: buildInputColumn('Kapan No')),
                    SizedBox(width: 5),
                    Expanded(child: buildInputColumn('Diam/Cent')),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(child: buildInputColumn('Clarity Name')),
                    SizedBox(width: 5),
                    Expanded(child: buildInputColumn('Jangad No.')),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(flex: 53, child: buildInputColumn('Box No')),
                    SizedBox(width: 5),
                    Expanded(flex: 25, child: buildInputColumn5('Date')),
                    textScreen('To', 20, appColors.primaryColor,
                        FontWeight.w500, TextAlign.center),
                    Expanded(flex: 25, child: buildInputColumn5('')),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(flex: 25, child: buildInputColumn('Si No')),
                    SizedBox(width: 5),
                    textScreen('To', 18, appColors.primaryColor,
                        FontWeight.w500, TextAlign.center),
                    SizedBox(width: 5),
                    Expanded(flex: 24, child: buildInputColumn('')),
                    SizedBox(width: 5),
                    Expanded(flex: 25, child: buildInputColumn('Box Lot No')),
                    textScreen('To', 18, appColors.primaryColor,
                        FontWeight.w500, TextAlign.center),
                    Expanded(flex: 25, child: buildInputColumn('')),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    children: [
                      Expanded(child: buildButton(0, 'Report')),
                      const SizedBox(width: 10),
                      Expanded(child: buildButton(1, 'Cencel')),
                      const SizedBox(width: 10),
                      Expanded(child: buildButton(2, 'Reseat')),
                      const SizedBox(width: 10),
                      Expanded(child: buildButton(3, 'Stricker')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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
