import 'package:flutter/material.dart';
import 'package:stonewise/utilites/common_colour.dart';

class CommonDialog extends StatefulWidget {
  final Widget child;
  final double? width;
  // String userId;
  final dynamic Function(String)? onClose;

  CommonDialog({
    super.key,
    required this.child,
    this.width,
    this.onClose,
  });

  @override
  State<CommonDialog> createState() => _CommonDialogState();
}

class _CommonDialogState extends State<CommonDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xffF9F9F9),
      shape: BeveledRectangleBorder(
        side: BorderSide(color: appColors.primaryColor, width: 1.5),
      ),
      child: PopScope(
        canPop: false,
        child: SizedBox(
          width: widget.width ?? 880,
          child: widget.child,
        ),
      ),
    );
  }
}
