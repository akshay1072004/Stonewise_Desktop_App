import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_button.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_textfild.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

Widget galaxy() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      textScreen1(
        'Galaxy',
        16,
        appColors.blackColor,
        FontWeight.w600,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.balkColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.balkColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.primaryColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.primaryColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.greenColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.greenColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0.00',
        15,
        appColors.blackColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
    ],
  );
}

Widget sarin() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      textScreen1(
        'Sarain',
        16,
        appColors.blackColor,
        FontWeight.w600,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.balkColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.balkColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.primaryColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.primaryColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.greenColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.greenColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0.00',
        15,
        appColors.blackColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
    ],
  );
}

Widget qrcoad() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      textScreen1(
        'QR-Coad',
        16,
        appColors.blackColor,
        FontWeight.w600,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.balkColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.balkColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.primaryColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.primaryColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.greenColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0',
        15,
        appColors.greenColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
      textScreen1(
        '0.00',
        15,
        appColors.blackColor,
        FontWeight.w500,
      ),
      SizedBox(height: 5),
    ],
  );
}

class leftDeshbord extends StatefulWidget {
  const leftDeshbord({super.key});

  @override
  State<leftDeshbord> createState() => _leftDeshbordState();
}

class _leftDeshbordState extends State<leftDeshbord> {
  final List<TextEditingController> _controllers =
      List.generate(23, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(23, (_) => FocusNode());

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  flex: 20,
                  child:
                      commonButton3('Kati', textColor: appColors.blackColor)),
              SizedBox(width: 3),
              Expanded(
                  flex: 80,
                  child: commonButton3('Kapan  Status Rep.',
                      textColor: appColors.blackColor)),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                flex: 20,
                child: commonButton3('E-Com', textColor: appColors.blackColor),
              ),
              SizedBox(width: 3),
              Expanded(
                flex: 80,
                child: commonButton3('Kapan Status Rep. 1',
                    textColor: appColors.blackColor),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                child: commonButton3('S-Prt', textColor: appColors.blackColor),
              ),
              SizedBox(width: 3),
              Expanded(
                child: commonButton3('M2pcs', textColor: appColors.blackColor),
              ),
              SizedBox(width: 3),
              Expanded(
                child: commonButton3('Kapan Report',
                    textColor: appColors.blackColor),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                  flex: 25,
                  child:
                      commonButton3('2-Kap', textColor: appColors.blackColor)),
              SizedBox(width: 3),
              Expanded(
                  flex: 25,
                  child:
                      commonButton3('K-Com', textColor: appColors.blackColor)),
              SizedBox(width: 3),
              Expanded(
                  flex: 10,
                  child: commonButton3('M', textColor: appColors.blackColor)),
              SizedBox(width: 3),
              Expanded(
                  flex: 40,
                  child: commonButton3('Master Rap',
                      textColor: appColors.blackColor)),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                  flex: 30,
                  child: commonButton3('Wt Diff Re',
                      textColor: appColors.blackColor)),
              SizedBox(width: 3),
              Expanded(
                  flex: 70,
                  child: commonButton3('Kap.Top/Pie Rep.',
                      textColor: appColors.blackColor)),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                  flex: 30,
                  child: commonButton3('Today R-P',
                      textColor: appColors.blackColor)),
              SizedBox(width: 3),
              Expanded(
                  flex: 70,
                  child: commonButton3('R-P% Decending',
                      textColor: appColors.blackColor)),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                  flex: 25,
                  child: commonButton3('Dia', textColor: appColors.blackColor)),
              SizedBox(width: 3),
              Expanded(
                  flex: 25,
                  child:
                      commonButton3('Cent', textColor: appColors.blackColor)),
              SizedBox(width: 3),
              Expanded(
                  flex: 50,
                  child: commonButton3('Cent-Dia In Clrt',
                      textColor: appColors.blackColor)),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                  flex: 20,
                  child: commonButton3('Wt', textColor: appColors.blackColor)),
              SizedBox(width: 3),
              Expanded(
                  flex: 20,
                  child:
                      commonButton3('Cool', textColor: appColors.blackColor)),
              SizedBox(width: 3),
              Expanded(
                  flex: 20,
                  child:
                      commonButton3('0 Bk', textColor: appColors.blackColor)),
              SizedBox(width: 3),
              Expanded(
                  flex: 40,
                  child: commonButton3('Pend Rep',
                      textColor: appColors.blackColor)),
            ],
          ),
        ],
      ),
    );
  }

  // Widget _buildTextField(String hintText, int index) {
  //   return SizedBox(
  //     height: 30, // Set height of the text box
  //     child: TextField(
  //       controller: _controllers[index],
  //       focusNode: _focusNodes[index],
  //       textInputAction: index < _focusNodes.length - 1
  //           ? TextInputAction.next
  //           : TextInputAction.done,
  //       onSubmitted: (_) {
  //         if (index < _focusNodes.length - 1) {
  //           FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
  //         } else {
  //           FocusScope.of(context).unfocus();
  //         }
  //       },
  //       style: TextStyle(
  //           fontSize: 10), // Optional: adjusts text size to fit in height
  //       decoration: InputDecoration(
  //         isDense: true, // Reduces vertical padding inside the field
  //         hintText: hintText,
  //         hintStyle: TextStyle(color: Color(0xff8c8c8c), fontSize: 12),
  //         contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
  //         border: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(4),
  //           borderSide: BorderSide(color: Color(0xffd0d0d0)),
  //         ),
  //         enabledBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(4),
  //           borderSide: BorderSide(color: Color(0xffd0d0d0)),
  //         ),
  //         focusedBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(4),
  //           borderSide: BorderSide(color: Color(0xffd0d0d0)),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

class rightDeshbord extends StatefulWidget {
  const rightDeshbord({super.key});

  @override
  State<rightDeshbord> createState() => _rightDeshbordState();
}

class _rightDeshbordState extends State<rightDeshbord> {
  final List<TextEditingController> _controllers =
      List.generate(30, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(30, (_) => FocusNode());

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 50,
              child: commonButton3('Emp Production Rep.',
                  textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 25,
              child: commonButton3('Tm', textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 25,
              child: commonButton3('S. Prt', textColor: appColors.blackColor),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              flex: 50,
              child: commonButton3('Daily Production Rep.',
                  textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 25,
              child: commonButton3('Mt', textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 25,
              child: commonButton3('tno', textColor: appColors.blackColor),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              flex: 80,
              child: commonButton3('Kap in Emp Comp. Rep',
                  textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 20,
              child: commonButton3('My Bank', textColor: appColors.blackColor),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              flex: 70,
              child: commonButton3('Emp. ompair Report',
                  textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 30,
              child:
                  commonButton3('E-dt Plan', textColor: appColors.blackColor),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              flex: 40,
              child: commonButton3('Check - Plan Rep.',
                  textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 10,
              child: commonButton3('D', textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 20,
              child: commonButton3('St', textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 10,
              child: commonButton3('S', textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 10,
              child: commonButton3('E', textColor: appColors.blackColor),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              flex: 40,
              child: commonButton3('Qr. Part Rep..',
                  textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 10,
              child: commonButton3('D', textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 20,
              child: commonButton3('St', textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 10,
              child: commonButton3('S', textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 10,
              child: commonButton3('M', textColor: appColors.blackColor),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              flex: 40,
              child: commonButton3('Sarin. Part Rep.',
                  textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 10,
              child: commonButton3('D', textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 20,
              child: commonButton3('St', textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 10,
              child: commonButton3('S', textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 10,
              child: commonButton3('M', textColor: appColors.blackColor),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              flex: 50,
              child:
                  commonButton3('Lot Search', textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 30,
              child:
                  commonButton3('M Qr Ser.', textColor: appColors.blackColor),
            ),
            SizedBox(width: 3),
            Expanded(
              flex: 20,
              child: commonButton3('Qr Cl', textColor: appColors.blackColor),
            ),
          ],
        ),
      ],
    );
  }

  // Widget _buildTextField(String hintText, int index) {
  //   return SizedBox(
  //     height: 30, // Set height of the text box
  //     child: TextField(
  //       controller: _controllers[index],
  //       focusNode: _focusNodes[index],
  //       textInputAction: index < _focusNodes.length - 1
  //           ? TextInputAction.next
  //           : TextInputAction.done,
  //       onSubmitted: (_) {
  //         if (index < _focusNodes.length - 1) {
  //           FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
  //         } else {
  //           FocusScope.of(context).unfocus();
  //         }
  //       },
  //       style: TextStyle(
  //           fontSize: 10), // Optional: adjusts text size to fit in height
  //       decoration: InputDecoration(
  //         isDense: true, // Reduces vertical padding inside the field
  //         hintText: hintText,
  //         hintStyle: TextStyle(color: Color(0xff8c8c8c), fontSize: 12),
  //         contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
  //         border: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(4),
  //           borderSide: BorderSide(color: Color(0xffd0d0d0)),
  //         ),
  //         enabledBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(4),
  //           borderSide: BorderSide(color: Color(0xffd0d0d0)),
  //         ),
  //         focusedBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(4),
  //           borderSide: BorderSide(color: Color(0xffd0d0d0)),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

class MiddleSection extends StatefulWidget {
  const MiddleSection({super.key});

  @override
  State<MiddleSection> createState() => _MiddleSectionState();
}

class _MiddleSectionState extends State<MiddleSection> {
  String? selectedValue;
  int _selectedIndex = 0;
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(), // default date
      firstDate: DateTime(2000), // min date
      lastDate: DateTime(2101), // max date
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  TimeOfDay? selectedTime;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              textScreen1(
                'Kapan No',
                15,
                appColors.primaryColor,
                FontWeight.w500,
              ),
              SizedBox(width: 10),
              Expanded(child: buildTextField('')),
              SizedBox(width: 10),
              textScreen1(
                'MKapan No',
                15,
                appColors.primaryColor,
                FontWeight.w500,
              ),
              SizedBox(width: 10),
              Expanded(child: buildTextField('')),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              textScreen1(
                'Lot No',
                16,
                appColors.primaryColor,
                FontWeight.w500,
              ),
              SizedBox(width: 10),
              Expanded(flex: 20, child: buildTextField('')),
              SizedBox(width: 10),
              textScreen1(
                'To',
                14,
                appColors.primaryColor,
                FontWeight.w500,
              ),
              SizedBox(width: 10),
              Expanded(flex: 20, child: buildTextField('')),
              SizedBox(width: 10),
              Expanded(
                flex: 60,
                child: CommonDropdownButton(
                  items: [
                    'Diameter',
                    'Shape',
                    'Cent',
                    'CL-DIA-CNT',
                    'Lot Summary',
                    'Lot details',
                    'Shape Lot Sum.',
                    'All Report'
                  ],
                  initalValue: selectedValue,
                  onChange: (p0) {
                    setState(() {
                      selectedValue = p0;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              textScreen1(
                'Chack No',
                16,
                appColors.primaryColor,
                FontWeight.w500,
              ),
              SizedBox(width: 10),
              Expanded(child: buildTextField('')),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                'Date',
                style: TextStyle(color: appColors.primaryColor, fontSize: 18),
              ),
              SizedBox(width: 5),
              Expanded(
                child: SizedBox(
                  height: 35,
                  child: TextField(
                    controller: TextEditingController(
                      text: selectedDate != null
                          ? '${selectedDate!.toLocal()}'.split(' ')[0]
                          : '',
                    ),
                    readOnly: false,
                    decoration: InputDecoration(
                      //      labelText: 'Select Date',
                      border: OutlineInputBorder(), // This is the default
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: appColors.borderColor), // change as needed
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: appColors.borderColor,
                            width: 1.0), // change as needed
                      ),
                      //suffixIcon: Icon(Icons.calendar_today),
                    ),
                    onTap: () => _selectDate(context),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Text(
                'To',
                style: TextStyle(color: appColors.primaryColor, fontSize: 18),
              ),
              SizedBox(width: 5),
              Expanded(
                child: SizedBox(
                  height: 35,
                  child: TextField(
                    controller: TextEditingController(
                      text: selectedDate != null
                          ? '${selectedDate!.toLocal()}'.split(' ')[0]
                          : '',
                    ),
                    readOnly: false,
                    decoration: InputDecoration(
                      //      labelText: 'Select Date',
                      border: OutlineInputBorder(), // This is the default
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: appColors.borderColor), // change as needed
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: appColors.borderColor,
                            width: 1.0), // change as needed
                      ),
                      //suffixIcon: Icon(Icons.calendar_today),
                    ),
                    onTap: () => _selectDate(context),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text('Time',
                  style:
                      TextStyle(color: appColors.primaryColor, fontSize: 18)),
              SizedBox(width: 5),
              Expanded(
                child: SizedBox(
                  height: 35,
                  child: TextField(
                    controller: TextEditingController(
                      text: selectedTime != null
                          ? selectedTime!.format(context)
                          : '',
                    ),
                    readOnly: true,
                    decoration: InputDecoration(
                      //   labelText: 'Select Time',
                      border: OutlineInputBorder(),
                      //suffixIcon: Icon(Icons.access_time),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appColors.borderColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appColors.borderColor),
                      ),
                    ),
                    onTap: () => _selectTime(context),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Text('To',
                  style:
                      TextStyle(color: appColors.primaryColor, fontSize: 18)),
              SizedBox(width: 5),
              Expanded(
                child: SizedBox(
                  height: 35,
                  child: TextField(
                    controller: TextEditingController(
                      text: selectedTime != null
                          ? selectedTime!.format(context)
                          : '',
                    ),
                    readOnly: true,
                    decoration: InputDecoration(
                      //   labelText: 'Select Time',
                      border: OutlineInputBorder(),
                      //suffixIcon: Icon(Icons.access_time),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appColors.borderColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appColors.borderColor),
                      ),
                    ),
                    onTap: () => _selectTime(context),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(flex: 40, child: buildbotton(0, 'Refresh')),
              SizedBox(width: 10),
              Expanded(flex: 30, child: buildbotton(1, 'Exit')),
              SizedBox(width: 10),
              Expanded(flex: 30, child: buildbotton(2, 'Reset')),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(flex: 40, child: buildbotton(4, 'All Glx. Report')),
              SizedBox(width: 10),
              Expanded(flex: 30, child: buildbotton(5, 'Planner')),
              SizedBox(width: 10),
              Expanded(flex: 30, child: buildbotton(6, 'Checker')),
            ],
          ),
          SizedBox(height: 20),
        ],
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
          _selectedIndex = index;
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
                color: _selectedIndex == index
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
                      _selectedIndex == index
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



  // Widget buildbotton(String title, int index, String appTitle) {
  //   return GestureDetector(
  //     onTap: () {
  //       setState(() {
  //         _selectedIndex = index;
  //       });
  //     },
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         Center(
  //           child: Container(
  //             padding: EdgeInsets.all(8),
  //             margin: EdgeInsets.only(left: 5, right: 5),
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(8),
  //               border: Border.all(
  //                 width: 1,
  //                 color: _selectedIndex == index
  //                     ? Theme.of(context).brightness == Brightness.dark
  //                         ? Color(0xffF89329)
  //                         : Color(0xffF89329)
  //                     : Theme.of(context).brightness == Brightness.dark
  //                         ? const Color(0xFFB1B1B1).withOpacity(0.6)
  //                         : Color(0xffB6B6B6),
  //               ),
  //             ),
  //             child: Text(
  //               title,
  //               style: TextStyle(
  //                 fontSize: 14,
  //                 color: _selectedIndex == index
  //                     ? Theme.of(context).brightness == Brightness.dark
  //                         ? Color(0xffF89329)
  //                         : Color(0xffF89329)
  //                     : Theme.of(context).brightness == Brightness.dark
  //                         ? const Color(0xFFB1B1B1).withOpacity(0.6)
  //                         : Color(0xffB6B6B6),
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }