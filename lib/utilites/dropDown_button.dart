// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:stonewise/utilites/common_colour.dart';

// class CommonDropdownButton extends StatefulWidget {
//   String? initalValue;
//   final List<String> items;
//   final Function(String?)? onChange;
//   final Color? color;
//   final FocusNode? focusNode;
//   CommonDropdownButton({
//     super.key,
//     required this.items,
//     this.initalValue,
//     this.onChange,
//     this.color,
//     this.focusNode,
//   });

//   @override
//   State<CommonDropdownButton> createState() => _CommonDropdownButtonState();
// }

// class _CommonDropdownButtonState extends State<CommonDropdownButton> {
//   String? selectedValue;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     selectedValue = widget.initalValue;
//   }

//   @override
//   void didUpdateWidget(covariant CommonDropdownButton oldWidget) {
//     // TODO: implement didUpdateWidget
//     super.didUpdateWidget(oldWidget);
//     if (widget.initalValue != oldWidget.initalValue) {
//       setState(() {
//         selectedValue = widget.initalValue;
//       });
//     }
//   }

//   final List<String> items = ['Option 1', 'Option 2', 'Option 3'];
//   final List<String> itemsss = [
//     'Diameter',
//     'Shape',
//     'Cent',
//     'CL-DIA-CNT',
//     'Lot Summary',
//     'Lot details',
//     'Shape Lot Sum.',
//     'All Report'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton2<String>(
//       isExpanded: true,
//       hint: const Row(
//         children: [
//           SizedBox(
//             width: 4,
//           ),
//           Expanded(
//             child: Text(
//               '',
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//         ],
//       ),
//       items: widget.items.toSet().map((item) {
//         return DropdownMenuItem(
//           child: Text(item),
//           value: item,
//         );
//       }).toList(),
//       value: selectedValue,
//       onChanged: (String? value) {
//         setState(() {
//           selectedValue = value;
//         });
//       },
//       iconStyleData: IconStyleData(
//           icon: SvgPicture.asset(
//         'assets/svg/down_arrow.svg',
//         height: 15,
//         width: 15,
//       )),
//       buttonStyleData: ButtonStyleData(
//         height: 35,
//         padding: const EdgeInsets.only(right: 6),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: appColors.whiteColor,
//         ),
//         elevation: 2,
//       ),
//       dropdownStyleData: DropdownStyleData(
//         maxHeight: 200,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: appColors.whiteColor,
//         ),
//         scrollbarTheme: ScrollbarThemeData(
//             radius: const Radius.circular(5),
//             thickness: MaterialStateProperty.all<double>(6),
//             thumbColor: MaterialStateProperty.all(Colors.transparent)),
//       ),
//       menuItemStyleData: MenuItemStyleData(
//         overlayColor: MaterialStateProperty.all(Color(0xffe7edee)),
//       ),
//     );
//   }
// }
// import 'package:diamond_desktop_app/constants/textformfield/custom_textformfield.dart';
// import 'package:diamond_desktop_app/constants/texts/customtext.dart';
// import 'package:diamond_desktop_app/utiles/colors.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stonewise/utilites/common_colour.dart';

class CommonDropdownButton extends StatefulWidget {
  final List<String> items;
  final String? initalValue;
  final Function(String?)? onChange;
  final Color? color;
  final FocusNode? focusNode;

  const CommonDropdownButton({
    super.key,
    required this.items,
    this.initalValue,
    this.onChange,
    this.color,
    this.focusNode,
  });

  @override
  CommonDropdownButtonState createState() => CommonDropdownButtonState();
}

class CommonDropdownButtonState extends State<CommonDropdownButton> {
  String? selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = widget.initalValue;
  }

  @override
  void didUpdateWidget(CommonDropdownButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initalValue != oldWidget.initalValue) {
      setState(() {
        selectedItem = widget.initalValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        focusNode: widget.focusNode,
        value: widget.items.contains(selectedItem) ? selectedItem : null,
        isExpanded: true,
        hint: customText(
          text: "",
          style: TextStyle(color: appColors.blackColor, fontSize: 14),
        ),
        menuItemStyleData: MenuItemStyleData(
          overlayColor: MaterialStateProperty.all(Color(0xffE7EDFF)),
        ),
        buttonStyleData: ButtonStyleData(
          height: 35,
          padding: const EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: appColors.borderColor),
            color: appColors.whiteColor,
          ),
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: appColors.whiteColor,
          ),
          scrollbarTheme: ScrollbarThemeData(
            thumbColor: MaterialStateProperty.all(Colors.transparent),
            radius: Radius.circular(5),
            thickness: MaterialStateProperty.all(6),
          ),
        ),
        iconStyleData: IconStyleData(
          icon: SvgPicture.asset(
            "assets/svg/down_arrow.svg",
            height: 15,
            width: 15,
          ),
        ),
        onChanged: (newValue) {
          setState(() {
            selectedItem = newValue;
          });
          if (widget.onChange != null) {
            widget.onChange!(newValue);
          }
        },
        items: widget.items.toSet().map((item) {
          return DropdownMenuItem<String>(
            value: item,
            child: customText(
              text: item,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: selectedItem == item
                    ? appColors.blueColor
                    : appColors.blackColor,
                fontSize: 13,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

customText(
    {required String text,
    required TextStyle style,
    TextOverflow? overflow,
    TextAlign? textAlign}) {
  return Text(
    text,
    overflow: overflow,
    textAlign: textAlign,
    style: style,
  );
}
