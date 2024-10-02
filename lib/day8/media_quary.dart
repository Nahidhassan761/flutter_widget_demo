import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MediaQuaryExample extends StatefulWidget {
  const MediaQuaryExample({super.key});

  @override
  State<MediaQuaryExample> createState() => _MediaQuaryExampleState();
}

class _MediaQuaryExampleState extends State<MediaQuaryExample> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery Example"),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // First container with an image, name, and rating bar
            Stack(
              children: [
                Container(
                  height: mediaQuery.height * 0.3,
                  width: double.infinity,
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8.0,
                        spreadRadius: 1.0,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    child: Image.asset(
                      'images/n1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Picture name at the bottom left of the image
                Positioned(
                  bottom: 40,
                  left: 20,
                  child: Text(
                    'Mountain View', // Picture name
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                  ),
                ),
                // Rating bar at the bottom right of the image
                Positioned(
                  bottom: 10,
                  right: 20,
                  child: RatingBar.builder(
                    initialRating: 4.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 20,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
              ],
            ),

            // Second container with another image, name, and rating bar
            Stack(
              children: [
                Container(
                  height: mediaQuery.height * 0.3,
                  width: double.infinity,
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8.0,
                        spreadRadius: 1.0,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    child: Image.asset(
                      'images/n2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Picture name at the bottom left of the image
                Positioned(
                  bottom: 40,
                  left: 20,
                  child: Text(
                    'Ocean Waves', // Picture name
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                  ),
                ),
                // Rating bar at the bottom right of the image
                Positioned(
                  bottom: 10,
                  right: 20,
                  child: RatingBar.builder(
                    initialRating: 4.0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 20,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
              ],
            ),

            // Third container with an image, name, and rating bar
            Stack(
              children: [
                Container(
                  height: mediaQuery.height * 0.3,
                  width: double.infinity,
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8.0,
                        spreadRadius: 1.0,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    child: Image.asset(
                      'images/n3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Picture name at the bottom left of the image
                Positioned(
                  bottom: 40,
                  left: 20,
                  child: Text(
                    'City Lights', // Picture name
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                  ),
                ),
                // Rating bar at the bottom right of the image
                Positioned(
                  bottom: 10,
                  right: 20,
                  child: RatingBar.builder(
                    initialRating: 5.0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 20,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
