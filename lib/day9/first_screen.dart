import 'package:flutter/material.dart';
import 'package:project_3/day9/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String name="Nahid Hassan";
  String presentaddress="Gulshan-1,Dhaka";
  String permanantaddress="Pirgacha,Rangpur";
  var number="01785489275";
  String email="nahidhassan761@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.lightBlue[50], // Screen background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Decorative Image or Icon
            Icon(
              Icons.home,
              size: 100,
              color: Colors.blueAccent,
            ),
            SizedBox(height: 20),
            // Informative Text
            Text(
              'Welcome to the First Screen!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            // Button to Navigate to Second Page
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen(name: name,presentaddress: presentaddress,permanantaddress: permanantaddress,number: number,email: email,)));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blueAccent, // Button text color
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16), // Button padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
              ),
              child: Text(
                "Go to Second Page",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            // Additional Text or Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'Tap the button above to navigate to the second screen and explore more!',
                style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

