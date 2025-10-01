import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_textfild.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';
import 'package:stonewise/utilites/dropDown_button.dart';
import 'package:stonewise/utilites/text_screen.dart';

class StoneSearchScreen extends StatefulWidget {
  const StoneSearchScreen({super.key});

  @override
  State<StoneSearchScreen> createState() => _StoneSearchScreenState();
}

class _StoneSearchScreenState extends State<StoneSearchScreen> {
  int selectedIndex = 0;
  String? selectedValue;
  bool isselected = true;
  final List<String> items = ['Item 1', 'Item 2', 'Item 3'];
  @override
  Widget build(BuildContext context) {
    return CommonDialog(
      width: 1100,
      child: Column(
        children: [
          titlebar(() => Navigator.pop(context)),
          Container(
            width: double.infinity,
            color: Appcolor().whiteColor,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                textScreen1(
                  'Searching Forms...',
                  20,
                  Appcolor().primaryColor,
                  FontWeight.w600,
                ),
                Spacer(),
                buildButton(1, 'Change  Ro.Cts'),
                SizedBox(width: 10),
                buildButton(2, 'Kacha Pcs'),
                SizedBox(width: 10),
                buildButton(3, 'Delete Lots'),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Appcolor().primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textScreen1('Enter Your Search Name', 13, Appcolor().whiteColor,
                    FontWeight.w400),
                const SizedBox(height: 8),
                buildTextField2('label'),
              ],
            ),
          ),
          Row(
            children: [
              builddropdown('Process Type'),
              SizedBox(width: 5),
              builddropdown('Kapan No'),
              SizedBox(width: 5),
              builddropdown('Lot No.'),
              SizedBox(width: 5),
              builddropdown('Diameter Type'),
              SizedBox(width: 5),
              builddropdown('Diameter'),
              SizedBox(width: 5),
              builddropdown('Po.Cent'),
              SizedBox(width: 5),
              builddropdown('Cent Size'),
              SizedBox(width: 5),
              builddropdown('Size (Labour)'),
              SizedBox(width: 5),
              builddropdown('Stone Type'),
              SizedBox(width: 5),
            ],
          ),
          SizedBox(height: 16),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: appColors.tabelcolor),
              ),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (_, index) {
                  return Container(
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: appColors.tabelcolor),
                      ),
                    ),
                    child: Row(
                      children: List.generate(
                        9,
                        (col) => Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(color: appColors.tabelcolor),
                              ),
                            ),
                            child: col == 0 && index == 0
                                ? const Icon(Icons.play_arrow,
                                    color: Colors.blue)
                                : const SizedBox(),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 16),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Row(
              children: [
                Expanded(child: buildButton(0, 'Refresh Null')),
                const SizedBox(width: 10),
                Expanded(child: buildButton(4, 'Stn Refresh')),
                const SizedBox(width: 10),
                Expanded(child: buildButton(5, 'Ok')),
                const SizedBox(width: 10),
                Expanded(child: buildButton(6, 'Resat')),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Row(
              children: [
                Expanded(child: buildButton(7, 'Refresh ABCD')),
                const SizedBox(width: 10),
                Expanded(child: buildButton(8, 'Edit Weight')),
                const SizedBox(width: 10),
                Expanded(child: buildButton(9, 'Print')),
                const SizedBox(width: 10),
                Expanded(child: buildButton(10, 'Exit')),
              ],
            ),
          ),
          SizedBox(height: 20),
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

  Widget builddropdown(String title) {
    String? selectedValue;
    return Expanded(
      child: Column(
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
          const SizedBox(height: 6),
          CommonDropdownButton(
            items: [
              'Item 1',
              'Item 2',
              'Item 3',
              'Item 4',
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
    );
  }

  Widget builddropdown1(String title) {
    String? selectedValue;

  
    return Expanded(
      child: Column(
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
              'Item 1',
              'Item 2',
              'Item 3',
              'Item 4',
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
    );
  }
}
