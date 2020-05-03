import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Text('Material App Bar')),
        body: Container(child: columnSpacer),
      ),
    );
  }
}

Widget get column {
  return Column(
    children: <Widget>[
      Expanded(child: Container(color: Colors.red)),
      Expanded(child: Container(color: Colors.blue)),
      Expanded(child: Container(color: Colors.green)),
    ],
  );
}

// expanded 2
Widget get column2 {
  return Column(
    children: <Widget>[
      Expanded(flex: 2, child: Container(color: Colors.red)),
      Expanded(flex: 2, child: Container(color: Colors.blue)),
      Expanded(flex: 1, child: Container(color: Colors.green)),
    ],
  );
}

// main axis
Widget get column3 {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text("data"),
      Container(height: 100, color: Colors.blue),
      Placeholder(
        fallbackHeight: 100,
      ),
    ],
  );
}

// main axis with spacing
Widget get column4 {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    // mainAxisAlignment: MainAxisAlignment.spaceAround,
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text("data"),
      Container(height: 100, color: Colors.blue),
      Placeholder(
        fallbackHeight: 100,
      ),
    ],
  );
}

// wrap
Widget get wrap {
  return Wrap(
    runSpacing: 20,
    alignment: WrapAlignment.center,
    crossAxisAlignment: WrapCrossAlignment.center,
    children: <Widget>[
      Text("data"),
      Container(height: 100, color: Colors.blue),
      Placeholder(
        fallbackHeight: 100,
      ),
    ],
  );
}

// wrap2
Widget get wrap2 {
  return Wrap(
    runSpacing: 20,
    alignment: WrapAlignment.center,
    crossAxisAlignment: WrapCrossAlignment.center,
    children: <Widget>[
      Text("data"),
      Text("data2"),
      Text("data3"),
    ],
  );
}

// flexible
Widget get columnFlexible {
  return Column(
    children: <Widget>[
      Flexible(
        fit: FlexFit.tight,
        child: Container(
          color: Colors.blue,
          child: Text("data"),
        ),
      ),
      Flexible(
        fit: FlexFit.loose,
        child: Text("data"),
      ),
      Flexible(
        child: Text("data"),
      ),
      Flexible(
        child: Text("data"),
      ),
    ],
  );
}

// flexible
Widget get columnSpacer {
  return Column(
    children: <Widget>[
      Flexible(
        fit: FlexFit.tight,
        child: Container(
          color: Colors.blue,
          child: Text("data"),
        ),
      ),
      Spacer(),

      Flexible(
        fit: FlexFit.loose,
        child: Text("data"),
      ),
      Spacer(),
      Flexible(
        child: Text("data"),
      ),
      Flexible(
        child: Text("data"),
      ),
    ],
  );
}
