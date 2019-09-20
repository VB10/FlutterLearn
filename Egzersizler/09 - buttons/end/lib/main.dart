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
              // _samples,
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

Widget get _samples {
  return Column(
    children: <Widget>[
      const RaisedButton(
        onPressed: null,
        child: Text('Disabled Button', style: TextStyle(fontSize: 20)),
      ),
      const SizedBox(height: 30),
      RaisedButton(
        onPressed: () {},
        child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
      ),
      const SizedBox(height: 30),
      RaisedButton(
        onPressed: () {},
        textColor: Colors.white,
        padding: const EdgeInsets.all(0.0),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF0D47A1),
                Color(0xFF1976D2),
                Color(0xFF42A5F5),
              ],
            ),
          ),
          padding: const EdgeInsets.all(10.0),
          child: const Text('Gradient Button', style: TextStyle(fontSize: 20)),
        ),
      ),
    ],
  );
}
