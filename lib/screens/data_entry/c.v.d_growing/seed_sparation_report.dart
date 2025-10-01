import 'package:flutter/material.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';

class SeedSparationReport extends StatefulWidget {
  const SeedSparationReport({super.key});

  @override
  State<SeedSparationReport> createState() => _SeedSparationReportState();
}

class _SeedSparationReportState extends State<SeedSparationReport> {
  @override
  Widget build(BuildContext context) {
    return CommonDialog(
      child: Column(
        children: [
          titlebar(
            () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
