import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/common_textfild.dart';
import 'package:stonewise/utilites/text_screen.dart';

Widget buildInputColumn(String label) {
  return SizedBox(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textScreen(
          label,
          16,
          appColors.primaryColor,
          FontWeight.w500,
          TextAlign.left,
        ),
        SizedBox(height: 5),
        buildTextField(''),
      ],
    ),
  );
}

Widget buildInputColumn1(String label) {
  return SizedBox(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textScreen(
          label,
          12,
          appColors.primaryColor,
          FontWeight.w500,
          TextAlign.left,
        ),
        SizedBox(height: 5),
        buildTextField(''),
      ],
    ),
  );
}

Widget buildInputColumn2(String label, String title) {
  return SizedBox(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textScreen(
          label,
          16,
          appColors.primaryColor,
          FontWeight.w500,
          TextAlign.left,
        ),
        SizedBox(height: 5),
        buildTextField3(label, title),
      ],
    ),
  );
}

Widget buildInputColumn3(String label) {
  return SizedBox(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textScreen(
          label,
          12,
          appColors.primaryColor,
          FontWeight.w500,
          TextAlign.left,
        ),
        SizedBox(height: 5),
        buildTextField(''),
      ],
    ),
  );
}

Widget buildInputColumn4(String label) {
  return SizedBox(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textScreen(
          label,
          12,
          appColors.primaryColor,
          FontWeight.w500,
          TextAlign.left,
        ),
        SizedBox(height: 5),
        buildTextField(''),
      ],
    ),
  );
}

Widget buildInputColumn5(String label) {
  return SizedBox(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textScreen(
          label,
          16,
          appColors.primaryColor,
          FontWeight.w500,
          TextAlign.left,
        ),
        SizedBox(height: 5),
        BuildInputColumn5(),
      ],
    ),
  );
}

class BuildInputColumn5 extends StatefulWidget {
  const BuildInputColumn5({super.key});

  @override
  State<BuildInputColumn5> createState() => _BuildInputColumn5State();
}

class _BuildInputColumn5State extends State<BuildInputColumn5> {
  DateTime? selectedDate;
  final TextEditingController _controller = TextEditingController();

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _controller.text =
            "${picked.day.toString().padLeft(2, '0')}-${picked.month.toString().padLeft(2, '0')}-${picked.year}";
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextField(
          controller: _controller,
          readOnly: true,
          decoration: InputDecoration(
            filled: true,
            //  hintText: 'Select Date',
            hintStyle: TextStyle(color: appColors.textColor),
            fillColor: appColors.whiteColor,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: appColors.borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: appColors.borderColor, width: 1),
            ),
          ),
          onTap: () => selectDate(context),
        ),
      ),
    );
  }
}
