import 'package:end/real_view.dart';
import 'package:end/responsive_util_view.dart';
import 'package:flutter/material.dart';

import 'responsve_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: RealView());
  }
}
