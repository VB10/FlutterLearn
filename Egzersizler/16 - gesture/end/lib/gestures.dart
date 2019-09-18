import 'package:flutter/material.dart';

class GesturesView extends StatefulWidget {
  @override
  _GesturesViewState createState() => _GesturesViewState();
}

class _GesturesViewState extends State<GesturesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Draggable(
              child: Icon(
                Icons.android,
                size: 90.0,
                color: Colors.green,
              ),
              feedback: Icon(
                Icons.android,
                size: 90.0,
              ),
              childWhenDragging: Icon(
                Icons.android,
                size: 90.0,
                color: Colors.red,
              ),
              data: "sa",
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.green,
              child: DragTarget(
                builder: (context, List<String> candidateData, rejectedData) {
                  print(candidateData);
                  return Center(
                      child: Text(
                    "Even",
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ));
                },
                onWillAccept: (data) {
                  print("AS");
                  return true;
                },
                onAccept: (data) {
                  print("AS");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
