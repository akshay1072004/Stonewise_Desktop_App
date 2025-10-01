import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_inputColumn.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class Stocks extends StatefulWidget {
  const Stocks({super.key});

  @override
  State<Stocks> createState() => _StocksState();
}

class _StocksState extends State<Stocks> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CommonDialog(
        width: 1000,
        child: Column(
          children: [
            titlebar(
              () {
                Navigator.pop(context);
              },
            ),
            textScreen('Stock Forms', 25, appColors.primaryColor,
                FontWeight.w600, TextAlign.center),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: builddropdown('')),
                        SizedBox(width: 5),
                        Expanded(child: builddropdown('Main Kapan No')),
                        SizedBox(width: 5),
                        Expanded(child: builddropdown('Kapan No.')),
                        SizedBox(width: 5),
                        Expanded(child: builddropdown('Charni.')),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(child: builddropdown('Main Kapan No')),
                        SizedBox(width: 5),
                        Expanded(child: builddropdown('Jangad')),
                        SizedBox(width: 5),
                        Expanded(child: buildInputColumn5('Date')),
                        Text('To',
                            style: TextStyle(color: appColors.primaryColor)),
                        Expanded(child: buildInputColumn5('')),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                              color: Color(0xffF8FAFF),
                              border: Border.all(color: appColors.borderColor),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 650, 0),
                                  child: Table(
                                    border: TableBorder.all(
                                        color: appColors.tabelcolor),
                                    columnWidths: {
                                      0: FlexColumnWidth(0.2),
                                      1: FlexColumnWidth(0.4),
                                      2: FlexColumnWidth(0.4),
                                    },
                                    children: [
                                      TableRow(
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
                                            child: Text('',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xffffffff),
                                                )),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text('',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xffffffff),
                                                )),
                                          ),
                                        ],
                                      ),
                                      TableRow(
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text('')),
                                          Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text('')),
                                          Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text('')),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 500, bottom: 10, right: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: buildInputColumn2('', '')),
                                      SizedBox(width: 5),
                                      Expanded(
                                          child: buildInputColumn2('', '')),
                                      SizedBox(width: 5),
                                      Expanded(
                                          child: buildInputColumn2('', '')),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: Row(
                        children: [
                          Expanded(child: buildbotton(1, 'Stk Refresh')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(2, 'Stk Submit')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(3, 'Stk  Delete')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(4, 'L-R Stc')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(5, 'User')),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: Row(
                        children: [
                          Expanded(child: buildbotton(6, 'J p 1')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(7, 'J p 2')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(8, 'Issue')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(9, 'Rec')),
                          SizedBox(width: 5),
                          Expanded(child: buildbotton(10, 'Exit')),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget builddropdown(String title) {
    String? selectedValue;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: appColors.primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        CommonDropdownButton(
          items: [
            'Jan',
            'Feb',
            'Mrach',
            'May',
          ],
          initalValue: selectedValue,
          onChange: (p0) {
            setState(() {
              selectedValue = p0;
            });
          },
        ),
      ],
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
                      FontWeight.w600,
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
