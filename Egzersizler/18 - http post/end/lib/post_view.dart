import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/user.dart';

class HttpPostView extends StatefulWidget {
  @override
  _HttpPostViewState createState() => _HttpPostViewState();
}

class _HttpPostViewState extends State<HttpPostView> {
  String text = "";
  User user;
  String baseURL = "https://starforce-6fe5f.firebaseio.com";
  List<User> users = [];

  // don't use key param "key", could you use uniqkey value or private key and maybe debugKey value fill it .
  GlobalKey<ScaffoldState> key = GlobalKey(debugLabel: "scaffold");

  @override
  void initState() {
    super.initState();
    user = User(age: 1, name: "John Doe");
  }

  Future postUserFromFirebase() async {
    key.currentState.showSnackBar(SnackBar(
      content: Row(
        children: <Widget>[
          CircularProgressIndicator(),
          Text("Data uploading..")
        ],
      ),
    ));
    final userJson = json.encode(user.toJson());
    final response = await http.post("$baseURL/user.json", body: userJson);

    switch (response.statusCode) {
      case HttpStatus.ok:
        key.currentState
            .showSnackBar(SnackBar(content: Text("Data upload completed.")));
        break;
      default:
        key.currentState.showSnackBar(SnackBar(
            content: Text(
          "Data upload failed. ${response.body}",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
        )));
    }
  }

  Future getUsersData() async {
    final response = await http.get("$baseURL/user.json");
    switch (response.statusCode) {
      case HttpStatus.ok:
        var jsonMaps = json.decode(response.body);
        // TODO: remove it. Use equatable
        users.clear();
        jsonMaps.forEach((key, value) {
          User user = User.fromJson(value);
          users.add(user);
        });
        setState(() {});
        key.currentState.showSnackBar(
            SnackBar(content: Text("Data list request completed.")));

        break;
      default:
        key.currentState.showSnackBar(SnackBar(
            content: Text(
          "Data upload failed. ${response.body}",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
        )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(),
      body: Center(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      trailing: Icon(Icons.person_pin),
                      title: Text(users[index].name),
                      subtitle: Text("${users[index].age}"),
                    );
                  },
                ),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Pls, write your name."),
                onChanged: (val) {
                  user.name = val;
                },
              ),
              TextField(
                decoration: InputDecoration(hintText: "Pls, write your age."),
                keyboardType: TextInputType.number,
                onChanged: (val) {
                  user.age = int.tryParse(val);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.send,
                      color: Colors.green,
                    ),
                    onPressed: postUserFromFirebase,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.get_app,
                      color: Colors.blueGrey,
                    ),
                    onPressed: getUsersData,
                  ),
                ],
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
