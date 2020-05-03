import 'package:end/model/item.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:provider/provider.dart';

import 'model/cart_model.dart';

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
    var cart = Provider.of<CartModel>(context);

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.local_grocery_store,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("/basket");
            },
          )
        ],
        automaticallyImplyLeading: false,
        leading: Consumer<CartModel>(builder: (context, cart, child) {
          return Text(
            " ${cart.items.length}",
            style: TextStyle(color: Colors.black),
          );
        }),
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
          final isHaveBasketList = cart.items.contains(items[index]);
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
                  child: isHaveBasketList
                      ? Icon(Icons.check, semanticLabel: 'ADDED')
                      : Text("Add"),
                  onPressed:
                      isHaveBasketList ? null : () => cart.add(items[index])),
            ),
          );
        },
      ),
    );
  }
}
