import 'package:flutter/material.dart';

class SampleMediaView extends StatefulWidget {
  @override
  _SampleMediaViewState createState() => _SampleMediaViewState();
}

class _SampleMediaViewState extends State<SampleMediaView> {
  double ratio = 0;
  double textScale = 0;
  double scaleWidth = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    var radio = MediaQuery.of(context).size.aspectRatio;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    textScale = MediaQuery.of(context).textScaleFactor;
    ratio = radio;
    print(" width : $width / height: $height / radio : $radio ");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 200 * ratio,
            color: Colors.green,
          ),
          SizedBox(
            height: 50 * ratio,
          ),
          Container(
            height: 300 * ratio,
            child: Row(
              children: <Widget>[
                Container(
                  color: Colors.blue,
                  width: 300 * scaleWidth,
                ),
                SizedBox(
                  width: 100 * scaleWidth,
                ),
                Container(
                  color: Colors.red,
                  width: 300 * scaleWidth,
                ),
                SizedBox(
                  width: 50 * scaleWidth,
                ),
                Container(
                  color: Colors.grey,
                  width: 100 * scaleWidth,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50 * ratio,
          ),
          Icon(
            Icons.android,
            color: Colors.green,
            size: textScale * 150,
          ),
          SizedBox(
            height: 50 * ratio,
          ),
          Placeholder(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
