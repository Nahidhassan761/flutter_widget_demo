import 'package:flutter/material.dart';

class ExpandedDemo extends StatefulWidget {
  const ExpandedDemo({super.key});

  @override
  State<ExpandedDemo> createState() => _ExpandedDemoState();
}

class _ExpandedDemoState extends State<ExpandedDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.deepOrange,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                            color: Colors.green,
                          ),
                          ),
                          Expanded(child: Container(
                             child: Column(
                               children: [
                                 Expanded(child: Container(
                                   color: Colors.black,
                                 ),
                                 ),
                                 Expanded(child: Container(
                                   color: Colors.white,
                                 ),
                                 ),
                               ],
                             ),
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      color: Colors.green,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                             color: Colors.yellowAccent,
                           ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.white,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      color: Colors.yellow[600],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.pink,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.brown,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                    color: Colors.brown,
                                  ),
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: Container(
                                    color: Colors.black,
                                  ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Expanded(child: Container(
                                    color: Colors.blue,
                                  ),
                                  ),
                                  Expanded(child: Container(
                                    color: Colors.green,
                                  ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
