import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';

Widget buildTextField(String label, {int maxLines = 1}) {
  return SizedBox(
    child: Container(
      height: maxLines == 1 ? 35 : null, // Allow height to expand if multiline
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          filled: true,
          fillColor: appColors.whiteColor,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: appColors.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: appColors.borderColor, width: 2),
          ),
        ),
      ),
    ),
  );
}

Widget buildTextField1(String label, {int maxLines = 1}) {
  return SizedBox(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: appColors.borderColor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        ),
      ),
    ),
  );
}

Widget buildTextField2(String label, {int maxLines = 1}) {
  return SizedBox(
    child: Container(
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        maxLines: maxLines,
        style: TextStyle(color: appColors.whiteColor),
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: appColors.whiteColor.withOpacity(0.1),
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 17.5),
        ),
      ),
    ),
  );
}

Widget buildTextField3(String label, String title, {int maxLines = 1}) {
  return SizedBox(
    child: Container(
      height: maxLines == 1 ? 35 : null, // Allow height to expand if multiline
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          filled: true,
          hintText: title,
          hintStyle: TextStyle(color: appColors.textColor),
          fillColor: appColors.whiteColor,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: appColors.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: appColors.borderColor, width: 2),
          ),
        ),
      ),
    ),
  );
}

Widget buildTextField4(String label, {int maxLines = 1}) {
  return SizedBox(
    child: Container(
      height: maxLines == 1 ? 35 : null, // Allow height to expand if multiline
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          filled: true,
          hintStyle: TextStyle(color: appColors.textColor),
          fillColor: appColors.whiteColor,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: appColors.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: appColors.borderColor, width: 2),
          ),
        ),
      ),
    ),
  );
}
// TextFormField customeTextfiled(
//   TextEditingController? controller,
// ) {
//   return TextFormField(
//     controller: controller,
//     decoration: InputDecoration(
//       enabledBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: appColors.borderColor),
//         borderRadius: BorderRadius.circular(5),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: appColors.borderColor),
//         borderRadius: BorderRadius.circular(5),
//       ),
//       disabledBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: appColors.borderColor),
//         borderRadius: BorderRadius.circular(5),
//       ),
//       border: OutlineInputBorder(
//         borderSide: BorderSide(color: appColors.borderColor),
//         borderRadius: BorderRadius.circular(5),
//       ),
//       focusedErrorBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: appColors.borderColor),
//         borderRadius: BorderRadius.circular(5),
//       ),

//     ),
//   );
// }

TextFormField customeTextfiled(
  TextEditingController? controller, {
  String? hintText,
  String? labelText,
  TextInputType keyboardType = TextInputType.text,
  bool readOnly = false,
  Function()? onTap,
  String? Function(String?)? validator,
}) {
  return TextFormField(
    controller: controller,
    readOnly: readOnly,
    keyboardType: keyboardType,
    validator: validator,
    onTap: onTap,
    decoration: InputDecoration(
      hintText: hintText,
      labelText: labelText,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: appColors.borderColor),
        borderRadius: BorderRadius.circular(5),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: appColors.borderColor, width: 1.5),
        borderRadius: BorderRadius.circular(5),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: appColors.borderColor),
        borderRadius: BorderRadius.circular(5),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: appColors.borderColor),
        borderRadius: BorderRadius.circular(5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: appColors.borderColor),
        borderRadius: BorderRadius.circular(5),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: appColors.borderColor),
        borderRadius: BorderRadius.circular(5),
      ),
    ),
  );
}
