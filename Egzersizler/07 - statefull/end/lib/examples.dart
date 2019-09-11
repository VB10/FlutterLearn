import 'dart:math';

import 'package:flutter/material.dart';

class RaisedCustom extends StatefulWidget {
  final VoidCallback onPress;

  const RaisedCustom({Key key, this.onPress}) : super(key: key);
  @override
  _RaisedCustomState createState() => _RaisedCustomState();
}

class _RaisedCustomState extends State<RaisedCustom> {
  List<Color> colorList = [];
  int randomNumber = 0;

  @override
  void initState() {
    super.initState();
    colorList.add(Colors.red);
    colorList.add(Colors.blue);
    colorList.add(Colors.green);
    colorList.add(Colors.black);
    colorList.add(Colors.pink);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          randomNumber = Random().nextInt(5);
        });
        widget.onPress();
      },
      child: Container(
        color: colorList[randomNumber],
      ),
    );
  }
}

class SliderExample extends StatefulWidget {
  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "${value.toInt()}",
            style: TextStyle(fontSize: value),
          ),
          Slider(
            min: 0,
            max: 100,
            value: value,
            onChanged: (value) {
              setState(() {
                this.value = value;
              });
            },
          )
        ],
      ),
    );
  }
}
