import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponveUtilView extends StatefulWidget {
  @override
  _ResponveUtilViewState createState() => _ResponveUtilViewState();
}

class _ResponveUtilViewState extends State<ResponveUtilView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            height: ScreenUtil.instance.setHeight(300),
            width: ScreenUtil.instance.setWidth(1000),
            color: Colors.black,
          ),
          SizedBox(
            height: 50,
          ),
          Image.network(
            "https://picsum.photos/200/300",
            height: ScreenUtil.instance.setHeight(400),
            width: ScreenUtil.instance.setWidth(400),
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: SizedBox(
                  width: ScreenUtil.instance.setWidth(500),
                ),
                shape: StadiumBorder(side: BorderSide()),
                onPressed: () {},
              ),
              SizedBox(
                width: ScreenUtil.instance.setWidth(50),
              ),
              RaisedButton(
                child: SizedBox(
                  width: ScreenUtil.instance.setWidth(350),
                ),
                shape: StadiumBorder(side: BorderSide()),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            "data",
            style: TextStyle(fontSize: ScreenUtil(allowFontScaling: true).setSp(100)),
          )
        ],
      ),
    ));
  }
}
