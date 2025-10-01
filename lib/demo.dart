import 'package:flutter/material.dart';

class DatePickerExample extends StatefulWidget {
  @override
  _DatePickerExampleState createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  DateTime? _selectedDate;

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Default date
      firstDate: DateTime(2000), // Earliest date the user can pick
      lastDate: DateTime(2101), // Latest date the user can pick
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Date Picker Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _selectedDate == null
                  ? 'No date selected!'
                  : 'Selected date: ${_selectedDate!.toLocal()}'.split(' ')[0],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _pickDate(context),
              child: Text('Pick a Date'),
            ),
          ],
        ),
      ),
    );
  }
}
