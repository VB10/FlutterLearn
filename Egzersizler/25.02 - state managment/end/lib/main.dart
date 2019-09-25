import 'package:end/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'basket.dart';
import 'catalog.dart';
import 'model/cart_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      builder: (context) => CartModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: {
        "/": (context) => LoginView(),
        "/home": (context) => CatalogView(),
        "/basket": (context) => BasketView()
      },
    );
  }
}
