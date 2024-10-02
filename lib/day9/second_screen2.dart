import 'package:flutter/material.dart';
import 'dart:io'; // For using File

class SecondScreen2 extends StatelessWidget {
  final String? name;
  final String? address;
  final String? number;
  final String? email;
  final String? selfiePath;

  SecondScreen2(
      {this.name, this.address, this.number, this.email, this.selfiePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.orange.shade50,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "User Information",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 20),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person, color: Colors.orange),
                      title: Text('Name',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(name ?? "N/A"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.location_on, color: Colors.orange),
                      title: Text('Address',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(address ?? "N/A"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.orange),
                      title: Text('Phone Number',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(number ?? "N/A"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.orange),
                      title: Text('Email',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(email ?? "N/A"),
                    ),
                  ],
                ),
              ),
            ),
            if (selfiePath != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  children: [
                    Text(
                      "Picture",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 8),
                    // Use Image.file() for images from gallery or camera
                    Image.file(
                      File(selfiePath!), // Load image from file path
                      height: 150,
                    ),
                  ],
                ),
              ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the input screen
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, // Button text color
                backgroundColor: Colors.orange, // Button background color
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Go Back',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
