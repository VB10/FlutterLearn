import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isEmailFieldFocus = false;
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        isEmailFieldFocus = !isEmailFieldFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: Center(
                    child: Icon(
                  Icons.android,
                  color: Colors.green,
                  size: 100,
                ))),
            Expanded(
                child: TextField(
              focusNode: _focusNode,
              onEditingComplete: () {
                print("asd");
              },
              decoration: InputDecoration(
                  labelStyle: TextStyle(
                      color: isEmailFieldFocus ? Colors.red : Colors.grey),
                  labelText: "Email addressasd",
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  suffixIcon: isEmailFieldFocus
                      ? Icon(Icons.check_circle, color: Colors.red)
                      : null),
            )),
            SizedBox(height: 30,),
            Expanded(child: TextField()),
            Expanded(
                child: Align(
                    alignment: Alignment.topRight,
                    child: Text("Forgot Password?"))),
            Expanded(
              child: RaisedButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  child: SizedBox.expand(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              stops: [0, 1],
                              colors: [Colors.orange, Colors.pink])),
                      child: Text(
                        "Sign IN",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
            ),
            Expanded(child: Center(child: Text("OR"))),
            Expanded(
              child: RaisedButton(onPressed: () {}, child: SizedBox.expand()),
            ),
            Spacer(),
            Expanded(
              child: SizedBox.expand(
                child: RaisedButton.icon(
                    color: Color.fromRGBO(54, 127, 192, 1),
                    onPressed: () {},
                    icon: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    label: Text(
                      "data",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
            Expanded(
                flex: 2,
                child: Center(
                    child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "New user? ",
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: "Sign up", style: TextStyle(color: Colors.pink)),
                    TextSpan(
                        text: " here ",
                        style: TextStyle(color: Colors.black)),
                  ]),
                ))),
          ],
        ),
      ),
    );
  }
}
