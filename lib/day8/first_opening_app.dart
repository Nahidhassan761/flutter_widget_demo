import 'package:flutter/material.dart';
import 'package:project_3/day8/botton_nav_demo.dart'; // Import your BottonNavDemo file

class FirstOpening extends StatefulWidget {
  const FirstOpening({super.key});

  @override
  State<FirstOpening> createState() => _FirstOpeningState();
}

class _FirstOpeningState extends State<FirstOpening>
    with SingleTickerProviderStateMixin {
  bool _showWelcomeText = false;
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller and fade animation
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    // Delay for 2 seconds before showing the welcome text and starting the animation
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _showWelcomeText = true;
      });
      _controller.forward(); // Start fade-in animation
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Get screen size for responsive design
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/widget.png'), // Set your background image here
            fit: BoxFit.cover, // Ensures the image covers the entire screen
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(
                  0.4), // Optional: darkens image for better contrast
              BlendMode.darken,
            ),
          ),
        ),
        child: Center(
          child: _showWelcomeText
              ? FadeTransition(
                  opacity: _fadeAnimation,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome to my first\napplication \nFlutter widget demo",
                        style: TextStyle(
                          fontSize: screenWidth * 0.06, // Responsive font size
                          fontWeight: FontWeight.bold, // Bold text
                          color: Colors.white, // Text color
                          letterSpacing:
                              1.8, // Slightly increased letter spacing
                          height:
                              1.3, // Line height for better spacing between lines
                          shadows: [
                            Shadow(
                              blurRadius: 10.0, // Blur radius for soft shadow
                              color: Colors
                                  .black26, // Slightly transparent shadow color
                              offset:
                                  Offset(2, 2), // Shadow offset for 3D effect
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center, // Centered text
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.2,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          backgroundColor: Colors.transparent,
                          elevation: 5,
                          shadowColor: Colors.black45,
                          side: const BorderSide(color: Colors.white, width: 2),
                        ),
                        onPressed: () {
                          // Navigate to BottonNavDemo when the button is pressed
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BottonNavDemo(),
                            ),
                          );
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFF92FE9D), Color(0xFF00C9FF)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Container(
                            constraints: const BoxConstraints(
                              maxWidth: 200,
                              minHeight: 50,
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              "Open",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Loading, please wait...",
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: FirstOpening()));
}
