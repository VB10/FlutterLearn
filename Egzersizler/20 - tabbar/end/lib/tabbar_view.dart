import 'package:flutter/material.dart';

class TabbarSampleView extends StatefulWidget {
  @override
  _TabbarSampleViewState createState() => _TabbarSampleViewState();
}

class _TabbarSampleViewState extends State<TabbarSampleView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.accessibility_new, color: Colors.brown),
            ),
            Tab(
              icon: Icon(Icons.radio, color: Colors.black),
            ),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.accessibility_new, color: Colors.brown),
            ),
            Tab(
              icon: Icon(Icons.radio, color: Colors.black),
            ),
          ],
        ),
        body: TabBarView(
          // disable swipe
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Container(color: Colors.red),
            Container(color: Colors.green),
          ],
        ),
      ),
    );
  }
}
