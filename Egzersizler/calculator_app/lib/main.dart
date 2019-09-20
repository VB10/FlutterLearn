import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: CalculatorView());
  }
}

class CalculatorView extends StatefulWidget {
  @override
  _CalculatorViewState createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  String text = "";
  int firstArea = 0;
  TextEditingController secondArea;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    secondArea = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final multipyTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.w700,
    );

    final sumTextStyle =
        TextStyle(color: Colors.red, fontSize: 25, letterSpacing: 2);

    final subTextStyle = TextStyle(
      color: Colors.green,
      fontSize: 25,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w700,
    );

    final divisionTextStyle = TextStyle(
      color: Colors.orange,
      fontSize: 25,
      fontWeight: FontWeight.w700,
    );

    void setResultText(double val) {
      setState(() {
        this.text = val.toString();
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator Applicaton Samples"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: TextField(
                      onChanged: (val) {
                        firstArea = int.tryParse(val);
                      },
                    )),
                Expanded(
                    child: Divider(
                  height: 1,
                )),
                Expanded(
                    flex: 2,
                    child: TextField(
                      controller: secondArea,
                    )),
              ],
            ),
            Wrap(
              spacing: 1,
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    setResultText(firstArea * double.parse(secondArea.text));
                  },
                  child: Text(
                    "*",
                    style: multipyTextStyle,
                  ),
                ),
                RaisedButton(
                  color: Colors.blue,
                  onPressed: () =>
                      setResultText(firstArea / int.parse(secondArea.text)),
                  child: Text(
                    "/",
                    style: divisionTextStyle,
                  ),
                ),
                RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    setResultText(firstArea + double.parse(secondArea.text));
                  },
                  child: Text(
                    "+",
                    style: sumTextStyle,
                  ),
                ),
                RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    setResultText(firstArea - double.parse(secondArea.text));
                  },
                  child: Text(
                    "-",
                    style: subTextStyle,
                  ),
                ),
              ],
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
