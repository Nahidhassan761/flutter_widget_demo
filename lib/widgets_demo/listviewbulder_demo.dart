import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List contact = [
    {'name': 'John Doe', 'phone': '01785489231'},
    {'name': 'Jane Smith', 'phone': '01785489232'},
    {'name': 'David Johnson', 'phone': '01785489233'},
    {'name': 'Emily Clark', 'phone': '01785489234'},
    {'name': 'Michael Lee', 'phone': '01785489235'},
    {'name': 'Olivia Brown', 'phone': '01785489236'},
    {'name': 'William Davis', 'phone': '01785489237'},
    {'name': 'Sophia Wilson', 'phone': '01785489238'},
    {'name': 'James Taylor', 'phone': '01785489239'},
    {'name': 'Charlotte Martinez', 'phone': '01785489240'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts List'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: contact.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: Card(
              elevation: 5, // Adds shadow for depth
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(15.0),
                onTap: () {
                  // Perform an action, e.g., navigate to details
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Tapped on ${contact[index]["name"]}'),
                    ),
                  );
                },
                leading: CircleAvatar(
                  backgroundColor: Colors.teal[200],
                  child: Text(
                    "${contact[index]["name"][0]}",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                title: Text(
                  "${contact[index]["name"]}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text("${contact[index]["phone"]}"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      onPressed: () {
                        // Add phone call functionality here
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Calling ${contact[index]["phone"]}'),
                          ),
                        );
                      },
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.teal,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ListViewDemo()));
}
