import 'package:end/home.dart';
import 'package:flutter/material.dart';

import 'detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App',  routes: {
      "/":(context)=> HomeView(),
      "/detail":(context)=> DetailView(),

    },);
  }
}
