import 'package:end/model/item.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class CatalogView extends StatefulWidget {
  @override
  _CatalogViewState createState() => _CatalogViewState();
}

class _CatalogViewState extends State<CatalogView> {
  List<Item> items = [];
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 20; i++) {
      items.add(Item(
          color: Colors.primaries[i % 17],
          text: WordPair.random().first,
          money: i * 15));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Catalog",
          style: TextStyle(
              color: Colors.black, fontSize: 35, fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  color: items[index].color,
                ),
              ),
              title: Text(items[index].text),
              trailing: FlatButton(
                child: Text("Add"),
                onPressed: () {},
              ),
            ),
          );
        },
      ),
    );
  }
}
