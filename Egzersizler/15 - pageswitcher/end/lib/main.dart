import 'package:flutter/material.dart';

import 'page_switcher_base.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: PageSwitcherBase()
    );
  }
}