import 'package:flutter/material.dart';
import 'package:project_3/day8/home_%20screens.dart';

import 'package:project_3/day8/notificationbar.dart';
import 'package:project_3/day8/profile.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  List<Widget> pages = [HomeScreens(), Profile(), Notificationbar()];
  PageController _pageController = PageController();
  int _currentIndex = 0;

  void onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void onTabTapped(int index) {
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView Demo'),
        backgroundColor: Colors.teal,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: pages,
      ),
    );
  }
}
