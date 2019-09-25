import 'package:end/login.dart';
import 'package:flutter/material.dart';

import 'catalog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: {
        "/": (context) => LoginView(),
        "/home": (context) => CatalogView(),
        "/detail": (context) => LoginView()
      },
    );
  }
}
