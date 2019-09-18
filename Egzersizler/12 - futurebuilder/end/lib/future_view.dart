import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FutureView extends StatefulWidget {
  @override
  _FutureViewState createState() => _FutureViewState();
}

class _FutureViewState extends State<FutureView> {
  String data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = "";
  }

  Future getLocalData() async {
    await Future.delayed(Duration(milliseconds: 500));
    return Future.value("Val");
  }

  Future<String> getLocalDataError() async {
    await Future.delayed(Duration(milliseconds: 500));
    return Future.error("Error");
  }

  Future getJsonPlaceHolder() {
    return http.get("https://jsonplaceholder.typicode.com/posts/1");
  }

  Widget get _futureBuilderSimple {
    return FutureBuilder(
      initialData: data,
      future: getLocalData(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.active:
            return Text("Welcome");
          case ConnectionState.waiting:
            return Text("Waiting");
          case ConnectionState.done:
            if (snapshot.hasData) {
              return Text("success : " + snapshot.data);
            }
            return Text("err : " + snapshot.error);
          case ConnectionState.none:
            return Text(snapshot.data);
          default:
            return Text("First init");
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.android, size: 50, color: Colors.green),
            // _futureBuilderSimple
          ],
        ),
      ),
    );
  }
}
