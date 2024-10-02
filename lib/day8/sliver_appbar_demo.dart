import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SilverAppBarDemo extends StatefulWidget {
  const SilverAppBarDemo({super.key});

  @override
  State<SilverAppBarDemo> createState() => _SilverAppBarDemoState();
}

class _SilverAppBarDemoState extends State<SilverAppBarDemo> {
  List<String> imagePaths = [
    'images/n2.jpg',
    'images/n3.jpg',
    'images/n4.jpg',
    'images/n5.jpg',
  ];

  List<String> imageNames = [
    "Forest Path",
    "Ocean Waves",
    "Mountain View",
    "Forest Path",
  ];

  List<double> imageRatings = [4.0, 3.5, 5.0, 4.5]; // Initial ratings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text(
              "SilverAppBarDemo",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            pinned: true,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/saint13.jpg',
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.teal,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FullScreenImageViewer(
                          images: imagePaths,
                          imageNames: imageNames,
                          ratings: imageRatings,
                          initialIndex: index,
                          onRatingUpdate: (rating) {
                            setState(() {
                              imageRatings[index] = rating;
                            });
                          },
                        ),
                      ),
                    );
                  },
                  child: _buildImageContainer(
                    imagePaths[index],
                    imageNames[index],
                    imageRatings[index],
                  ),
                );
              },
              childCount: imagePaths.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageContainer(
      String imagePath, String imageName, double rating) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8.0,
            spreadRadius: 1.0,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            child: Image.asset(
              imagePath,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              imageName,
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RatingBar.builder(
              initialRating: rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (newRating) {
                setState(() {
                  rating = newRating;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FullScreenImageViewer extends StatefulWidget {
  final List<String> images;
  final List<String> imageNames;
  final List<double> ratings;
  final int initialIndex;
  final ValueChanged<double> onRatingUpdate;

  FullScreenImageViewer({
    required this.images,
    required this.imageNames,
    required this.ratings,
    required this.initialIndex,
    required this.onRatingUpdate,
  });

  @override
  _FullScreenImageViewerState createState() => _FullScreenImageViewerState();
}

class _FullScreenImageViewerState extends State<FullScreenImageViewer> {
  late PageController _pageController;
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialIndex);
    currentIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: widget.images.length,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Hero(
                  tag: widget.images[index],
                  child: Image.asset(
                    widget.images[index],
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.imageNames[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RatingBar.builder(
                  initialRating: widget.ratings[index],
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: widget.onRatingUpdate,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: SilverAppBarDemo()));
}
