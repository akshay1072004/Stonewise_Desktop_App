import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeRangePicker extends StatefulWidget {
  @override
  _DateTimeRangePickerState createState() => _DateTimeRangePickerState();
}

class _DateTimeRangePickerState extends State<DateTimeRangePicker> {
  final TextEditingController _fromDateController = TextEditingController();
  final TextEditingController _toDateController = TextEditingController();
  final TextEditingController _fromTimeController = TextEditingController();
  final TextEditingController _toTimeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    DateTime now = DateTime.now();
    _fromDateController.text = DateFormat('dd-MM-yyyy').format(now);
    _toDateController.text = DateFormat('dd-MM-yyyy').format(now);
    _fromTimeController.text = DateFormat('hh:mm:ss a').format(now);
    _toTimeController.text = DateFormat('hh:mm:ss a').format(now);
  }

  Future<void> _pickDate(TextEditingController controller) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateFormat('dd-MM-yyyy').parse(controller.text),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      controller.text = DateFormat('dd-MM-yyyy').format(picked);
    }
  }

  Future<void> _pickTime(TextEditingController controller) async {
    TimeOfDay initialTime = TimeOfDay.fromDateTime(
      DateFormat('hh:mm:ss a').parse(controller.text),
    );
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
    if (picked != null) {
      final now = DateTime.now();
      final fullTime =
          DateTime(now.year, now.month, now.day, picked.hour, picked.minute);
      controller.text = DateFormat('hh:mm:ss a').format(fullTime);
    }
  }

  Widget _buildRow(String label, TextEditingController fromController,
      TextEditingController toController, bool isDate) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          child: Text(
            label,
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            controller: fromController,
            readOnly: true,
            onTap: () =>
                isDate ? _pickDate(fromController) : _pickTime(fromController),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text('To', style: TextStyle(color: Colors.blue)),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            controller: toController,
            readOnly: true,
            onTap: () =>
                isDate ? _pickDate(toController) : _pickTime(toController),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Date-Time Range Picker")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildRow('Date', _fromDateController, _toDateController, true),
            const SizedBox(height: 20),
            _buildRow('Time', _fromTimeController, _toTimeController, false),
          ],
        ),
      ),
    );
  }
}
