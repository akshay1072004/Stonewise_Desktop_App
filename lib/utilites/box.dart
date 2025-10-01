import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';

Widget box() {
  return Row(
    children: [
      Expanded(
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xffF8FAFF),
            border: Border.all(color: appColors.borderColor),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 450, 0),
            child: Table(
              border: TableBorder.all(color: appColors.tabelcolor),
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
                    Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
