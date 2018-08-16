import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Nested TabBar',
        theme: ThemeData(brightness: Brightness.dark),
        home: Scaffold(body: HomePage()));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
          color: Colors.blue,
          height: 300.0,
          child: Center(child: Text('Container'))),
      DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(tabs: [Tab(text: 'Tab1'), Tab(text: 'Tab2')]),
              Container(
                  height: 300.0, // TODO: How to not require static height
                  child: TabBarView(
                    children: [
                      Center(child: Text('Content1')),
                      Center(child: Text('Content2'))
                    ],
                  ))
            ],
          ))
    ]);
  }
}
