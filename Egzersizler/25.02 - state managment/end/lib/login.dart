import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome"),
            TextField(),
            TextField(
              obscureText: true,
            ),
            RaisedButton(
              child: Text("Enter to login"),
              onPressed: () {
                Navigator.of(context).pushNamed("/home");
              },
            )
          ],
        ),
      ),
    );
  }
}
