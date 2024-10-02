import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({super.key});

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show the AlertDialog when the button is pressed
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Warning!"),
                  content: const Text("Do you want to delete?"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context); // Close the dialog
                      },
                      child: const Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context); // Handle delete logic here
                      },
                      child: const Text("Ok"),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text("Show Alert"),
        ),
      ),
    );
  }
}
