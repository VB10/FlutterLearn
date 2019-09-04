import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title = "Hello";
    return MaterialApp(
      title: 'Material App',
      home: Container(
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
