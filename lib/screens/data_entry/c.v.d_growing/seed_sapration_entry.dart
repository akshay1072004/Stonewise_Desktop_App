import 'package:flutter/material.dart';
import 'package:stonewise/utilites/custom_titilebar.dart';
import 'package:stonewise/utilites/dilog_screen.dart';

class SeedSaprationEntry extends StatefulWidget {
  const SeedSaprationEntry({super.key});

  @override
  State<SeedSaprationEntry> createState() => _SeedSaprationEntryState();
}

class _SeedSaprationEntryState extends State<SeedSaprationEntry> {
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
