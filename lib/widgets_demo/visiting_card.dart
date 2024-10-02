import 'package:flutter/material.dart';

class VisitingCard extends StatefulWidget {
  const VisitingCard({super.key});

  @override
  State<VisitingCard> createState() => _VisitingCardState();
}

class _VisitingCardState extends State<VisitingCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        shadowColor: Colors.white,
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the FirstOpening page
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            "Profile",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add search functionality here
            },
          ),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Add functionality for the home icon here
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('images/nahid.jpg'),
            ),
            Text(
              "Nahid Hassan",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              width: 250,
              child: Divider(
                color: Colors.black,
                thickness: 7,
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.call, size: 40),
                title: Text(
                  "+8801715749480",
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  "+8801967247940",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.email, size: 40),
                title: Text(
                  "nahid761@gmail.com",
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  "nahid762@gmail.com",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.summarize, size: 40),
                title: Text(
                  "Present AD: Badda Link Road",
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  "Permanent AD: Rangpur",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://www.internetmatters.org/wp-content/uploads/2024/08/facebook-logo-new.png"),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6WwgH7Nl5_AW9nDCnR2Ozb_AU3rkIbSJdAg&s"),
                    ),
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRokEYt0yyh6uNDKL8uksVLlhZ35laKNQgZ9g&s"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
