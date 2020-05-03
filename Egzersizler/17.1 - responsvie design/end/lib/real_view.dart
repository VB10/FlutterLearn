import 'package:flutter/material.dart';

class RealView extends StatefulWidget {
  @override
  _RealViewState createState() => _RealViewState();
}

class _RealViewState extends State<RealView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Spacer(
            flex: 2,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              color: Colors.black,
            ),
          ),
          Expanded(
            child: SizedBox.expand(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  "https://picsum.photos/500/300",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: RaisedButton(
                    shape: StadiumBorder(side: BorderSide()),
                    onPressed: () {},
                  ),
                ),
                Spacer(),
                Expanded(
                  flex: 3,
                  child: RaisedButton(
                    shape: StadiumBorder(side: BorderSide()),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
