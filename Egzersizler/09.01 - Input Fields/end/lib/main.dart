import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Column(
            children: <Widget>[_inputs],
          )),
    );
  }
}

Widget get _inputs {
  return TextField(
    autofocus: true,
    keyboardType: TextInputType.number,
    maxLines: 5,
    onChanged: (val) {},
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600 ),
  );
}
