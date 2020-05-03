import 'package:flutter/material.dart';

class SearchCustom extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      Chip(
        label: Text("Right"),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    print(query.length);
    return Column(
      children: <Widget>[
        Card(
          child: Container(
            color: Colors.red,
            height: 100,
          ),
        ),
        Card(
          child: Container(
            color: Colors.red,
            height: 100,
          ),
        ),
        Card(
          child: Container(
            color: Colors.red,
            height: 100,
          ),
        ),
        Card(
          child: Container(
            color: Colors.red,
            height: 100,
          ),
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text("Sample Search...");
  }
}
