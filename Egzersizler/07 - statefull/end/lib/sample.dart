import 'package:flutter/material.dart';

class SampleView extends StatefulWidget {
  @override
  _SampleViewState createState() => _SampleViewState();
}

class _SampleViewState extends State<SampleView> {
  int number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number += 1;
          });
        },
      ),
      body: Container(
        child: Text("$number"),
      ),
    );
  }
}
