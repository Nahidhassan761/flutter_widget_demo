import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String? name;
  final String? presentaddress;
  final String? permanantaddress;
  final String? number;
  final String? email;

  SecondScreen({this.name, this.presentaddress, this.permanantaddress, this.number, this.email});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
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
                      title: Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(widget.name ?? "N/A"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.location_on, color: Colors.orange),
                      title: Text('Present Address', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(widget.presentaddress ?? "N/A"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.home, color: Colors.orange),
                      title: Text('Permanent Address', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(widget.permanantaddress ?? "N/A"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.orange),
                      title: Text('Number', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(widget.number ?? "N/A"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.orange),
                      title: Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(widget.email ?? "N/A"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the first page
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
