import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  String value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: TextField(
            onChanged: (val){
              value = val;
            },
        decoration: InputDecoration(
            suffix: IconButton(
          icon: Icon(Icons.send),
          onPressed: () {
            Navigator.of(context).pushNamed("/detail",arguments: value);
          },
        )),
      )),
    );
  }
}
