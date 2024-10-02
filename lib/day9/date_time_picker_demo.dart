import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import for date formatting

class DateTimePickerDemo extends StatefulWidget {
  const DateTimePickerDemo({super.key});

  @override
  State<DateTimePickerDemo> createState() => _DateTimePickerDemoState();
}

class _DateTimePickerDemoState extends State<DateTimePickerDemo> {
  DateTime? _selectedDate; // Store selected date

  _showDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Start with the current date
      firstDate: DateTime(2000), // Earliest selectable date
      lastDate: DateTime(2025), // Latest selectable date
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate; // Update selected date
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
        title: const Text(
          "Select Date",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.lightBlueAccent
          .withOpacity(0.2), // Light transparent background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // If a date is selected, display it in a readable format
            _selectedDate != null
                ? Text(
                    "Selected Date: ${DateFormat('MMMM dd, yyyy').format(_selectedDate!)}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : const Text(
                    "No date selected yet",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: _showDate, // Trigger the date picker
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, // Teal button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 12,
                ),
              ),
              child: const Text(
                "Select Date",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
