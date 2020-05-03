import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Future futureSample() async {
    await Future.delayed(Duration(milliseconds: 100));
  }

  Future futureSample2() async {
    await Future.value(Duration(milliseconds: 100));
  }

  Future futureMerge(args) async {
    await Future.wait([futureSample(), futureSample2()]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
