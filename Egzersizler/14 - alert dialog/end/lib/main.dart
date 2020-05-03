import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'alert_view.dart';

Future main() async {
  // await initializeDateFormatting("tr_TR");
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ], supportedLocales: [
       Locale('en', 'US'),
       Locale('ru', 'RU'),
    ], title: 'Material App', home: ShowView());
  }
}
