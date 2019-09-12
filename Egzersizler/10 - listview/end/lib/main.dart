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
            Expanded(child: _listViewCardContainerExpanded),
          ],
        )),
      ),
    );
  }
}

Widget get _listView {
  return ListView.builder(
    itemCount: 15,
    itemBuilder: (context, index) => Text("$index"),
  );
}

Widget get _listViewCard {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: 5,
    itemBuilder: (context, index) => Card(
      child: Text("$index "),
    ),
  );
}

Widget get _listViewCardContainer {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: 5,
    itemBuilder: (context, index) => Container(
      child: Card(
        child: Text("$index "),
      ),
    ),
  );
}

Widget get _listViewCardContainerExpanded {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: 5,
    itemBuilder: (context, index) => Container(
      height: 100,
      child: Card(
        child: Text("$index "),
      ),
    ),
  );
}
