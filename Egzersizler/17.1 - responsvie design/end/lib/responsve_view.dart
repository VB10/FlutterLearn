import 'package:flutter/material.dart';

class ResponsiveView extends StatefulWidget {
  @override
  _ResponsiveViewState createState() => _ResponsiveViewState();
}

class _ResponsiveViewState extends State<ResponsiveView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            width: 400,
            height: 100,
            color: Colors.black,
          ),
          SizedBox(
            height: 50,
          ),
          Image.network(
            "https://picsum.photos/200/300",
            width: 100,
            height: 100,
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: SizedBox(
                  width: 240,
                ),
                shape: StadiumBorder(side: BorderSide()),
                onPressed: () {},
              ),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                child: SizedBox(width: 20),
                shape: StadiumBorder(side: BorderSide()),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    ));
  }
}
