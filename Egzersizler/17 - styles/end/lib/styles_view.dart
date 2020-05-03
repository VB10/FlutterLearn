import 'package:flutter/material.dart';

class StylesView extends StatefulWidget {
  @override
  _StylesViewState createState() => _StylesViewState();
}

class _StylesViewState extends State<StylesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello", style: textStyle),
      ),
      body: Column(
        children: <Widget>[
          Text("style custom"),
          Container(
            decoration: boxContainer,
            height: 100,
          ),
          TextField(
            decoration: InputDecoration(border: InputBorder.none),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration:
                InputDecoration(border: OutlineInputBorder(), hintText: "Hint"),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                helperText: "Help",
                counterText: "1"),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {},
            shape: StadiumBorder(),
          )
        ],
      ),
    );
  }
}

final textStyle = TextStyle(
    color: Colors.red,
    letterSpacing: 5.0,
    shadows: [Shadow(color: Colors.red)]);

final textStyle2 = TextStyle(
    color: Colors.green,
    fontSize: 35,
    fontWeight: FontWeight.w600,
    fontFamily: "Chilanka");

final boxContainer = BoxDecoration(
    color: Colors.red,
    border:
        Border.all(color: Colors.black, width: 10, style: BorderStyle.solid));
