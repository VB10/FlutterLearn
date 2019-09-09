import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: ScreenView());
  }
}

class ScreenView extends StatelessWidget {
  const ScreenView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);

    return Scaffold(
      body: Center(
        child: Container(
          height: ScreenUtil.instance.setHeight(250),
          width: ScreenUtil.instance.setWidth(500),
          color: Colors.red,
          child: Text(
            'Hello World',
            style: TextStyle(
                fontSize: ScreenUtil(allowFontScaling: true).setSp(15)),
          ),
        ),
      ),
    );
  }
}
