import 'package:flutter/material.dart';
import 'package:project_3/day8/home_%20screens.dart';
import 'package:project_3/day8/notificationbar.dart';
import 'package:project_3/day8/pageview_%20demo.dart';
import 'package:project_3/day8/profile.dart';
import 'package:project_3/day8/sliver_appbar_demo.dart';

import '../widgets_demo/gridview_demo.dart';
import 'media_quary.dart';

//................TabBarNavigation Start..........................//
class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.pages),
                text: ("PageView"),
              ),
              Tab(icon: Icon(Icons.mediation_outlined), text: ("MediaQuary")),
              Tab(icon: Icon(Icons.grid_view), text: ("GridView")),
              Tab(icon: Icon(Icons.ad_units), text: ("SilverAppBar")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PageViewDemo(),
            MediaQuaryExample(),
            GridviewDemo(),
            SilverAppBarDemo()
          ],
        ),
      ),
    );
  }
}
//..............TabBarNavigation End...........................//
