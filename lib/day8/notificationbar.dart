import 'package:flutter/material.dart';

class Notificationbar extends StatefulWidget {
  const Notificationbar({super.key});

  @override
  State<Notificationbar> createState() => _NotificationState();
}

class _NotificationState extends State<Notificationbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amberAccent,
        child: Center(
          child: Text(
            "NOTIFICATION",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
