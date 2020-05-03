import 'package:flutter/material.dart';

class PageSwitcherBase extends StatefulWidget {
  @override
  _PageSwitcherBaseState createState() => _PageSwitcherBaseState();
}

class _PageSwitcherBaseState extends State<PageSwitcherBase> {
  List<Widget> pages = [];
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 3; i++) {
      pages.add(createPage(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (val) {},
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
    );
  }

  Widget createPage(int value) {
    return Container(
      color: Colors.blue.withBlue(value * 50),
      child: Center(
        child: Text(
          "$value",
        ),
      ),
    );
  }
}
