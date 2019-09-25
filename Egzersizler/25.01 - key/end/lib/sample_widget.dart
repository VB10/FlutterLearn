import 'package:flutter/material.dart';

class SampleWidget extends StatefulWidget {
  final Color color;

  const SampleWidget({Key key, this.color}) : super(key: key);


  @override
  _SampleWidgetState createState() => _SampleWidgetState();
}

class _SampleWidgetState extends State<SampleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      color: widget.color,
      height: 100,
    );
  }
}
