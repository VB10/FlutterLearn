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
        body: Center(
          child: Column(
            children: <Widget>[
              _flatButton,
              _raisedButton,
              _fabButton,
              _roundedButton
            ],
          ),
        ),
      ),
    );
  }
}

Widget get _flatButton {
  return FlatButton(
    child: Text("on press"),
    onPressed: () {},
  );
}

Widget get _raisedButton {
  return RaisedButton(
    child: Text("on press"),
    onPressed: () {},
  );
}

Widget get _fabButton {
  return FloatingActionButton(
    child: Text("on press"),
    onPressed: () {},
  );
}

Widget get _roundedButton {
  return RaisedButton(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    color: Colors.red,
    
    child: Text("on press"),
    onPressed: () {},
  );
}
