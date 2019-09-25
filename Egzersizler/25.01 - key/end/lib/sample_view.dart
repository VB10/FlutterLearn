import 'package:end/sample_widget.dart';
import 'package:flutter/material.dart';

class SampleView extends StatefulWidget {
  @override
  _SampleViewState createState() => _SampleViewState();
}

class _SampleViewState extends State<SampleView> {
  GlobalKey<ScaffoldState> key = GlobalKey(debugLabel: "scaffold");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      body: Column(
        children: <Widget>[
          SampleWidget(
            color: Colors.red,
            key: ValueKey("sample"),
          ),
          SampleWidget(
            color: Colors.blue,
            key: ValueKey("sample"),
          ),
          RaisedButton(
            onPressed: () {
              key.currentState.showSnackBar(SnackBar(
                content: Text("Key completed"),
              ));
            },
          )
        ],
      ),
    );
  }
}
