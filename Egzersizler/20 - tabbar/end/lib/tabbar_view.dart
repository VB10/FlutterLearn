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
        bottomNavigationBar: TabBar(
          
          tabs: <Widget>[
            Tab(
              text: "1",
            ),
            Tab(
              text: "2",
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Container(color: Colors.red),
            Container(color: Colors.green),
          ],
        ),
      ),
    );
  }
}
