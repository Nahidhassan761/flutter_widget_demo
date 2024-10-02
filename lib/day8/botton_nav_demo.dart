import 'package:flutter/material.dart';
import 'package:project_3/day8/home_%20screens.dart';
import 'package:project_3/day8/notificationbar.dart';
import 'package:project_3/day8/profile.dart';
import 'package:project_3/day8/sliver_appbar_demo.dart';
import 'package:project_3/day8/tab_nav_demo.dart';
import 'package:project_3/day9/date_time_picker_demo.dart';
import 'package:project_3/day9/statck_demo.dart';
import 'package:project_3/day9/textview_demo.dart';
import '../widgets_demo/expanded_demo.dart';
import '../widgets_demo/gridview_demo.dart';
import '../widgets_demo/listviewbulder_demo.dart';
import '../widgets_demo/visiting_card.dart';

//..............BottonBarNavigation Start......................//
class BottonNavDemo extends StatefulWidget {
  const BottonNavDemo({super.key});

  @override
  State<BottonNavDemo> createState() => _BottonNavDemoState();
}

class _BottonNavDemoState extends State<BottonNavDemo> {
  var _selectedIndex = 0;

  // List of pages to be displayed
  List<Widget> _pages = [
    VisitingCard(),
    ListViewDemo(),
    TabBarDemo(),
    DateTimePickerDemo(), // Add your new screens here
    StackDemo(), // Example additional screens
    TextviewDemo(),
  ];

  // Create a PageController to control the PageView
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    // Adding a listener to the PageController
    _pageController.addListener(() {
      setState(() {
        _selectedIndex = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Using PageView for swipeable pages
      body: PageView(
        controller: _pageController,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profile Visiting Card"),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone), label: "Phone ListView"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "TabBarDemo"),
          BottomNavigationBarItem(
              icon: Icon(Icons.date_range), label: "DateTimePickerDemo"),
          BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart), label: "StackDemo"),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_fields_sharp), label: "TextviewDemo"),
        ],
        iconSize: 20,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        showSelectedLabels: true, // Always show selected labels
        showUnselectedLabels: true, // Always show unselected labels
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update the selected index
            _pageController.jumpToPage(index); // Change page with animation
          });
        },
      ),
    );
  }
}
//..............BottonBarNavigation End......................//
