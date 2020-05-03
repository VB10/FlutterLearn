import 'package:end/search_delegate.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ShowView extends StatefulWidget {
  @override
  _ShowViewState createState() => _ShowViewState();
}

class _ShowViewState extends State<ShowView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey(debugLabel: "alertView");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ,
      appBar: AppBar(),
      key: scaffoldKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Try"),
            IconButton(
              icon: Icon(
                Icons.android,
                color: Colors.green,
                size: 50,
              ),
              onPressed: () {
                getshowDatePicker();
              },
            )
          ],
        ),
      ),
    );
  }

  void getshowDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime(2030),
      locale: Locale("tr"),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
  }

  void showSearchBar() {
    showSearch(context: context, delegate: SearchCustom());
  }

  void getShotBottomMenuSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Card(child: ListTile()),
              Card(child: ListTile()),
              Card(child: ListTile()),
            ],
          );
        });
  }

  void getShowBottomSheet() {
    scaffoldKey.currentState.showBottomSheet((context) => BottomSheet(
          onClosing: () {
            print("ss");
          },
          enableDrag: false,
          builder: (context) => Container(
            height: 200,
            color: Colors.grey,
            child: Column(
              children: <Widget>[
                Card(child: ListTile()),
                Card(child: ListTile()),
                Card(child: ListTile()),
              ],
            ),
          ),
        ));
  }

  void getSnackBar() {
    scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text("data"),
    ));
  }

  void getAlertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Card(
              child: Container(
                height: 100,
                alignment: Alignment.center,
                child: Text("Hello",
                    style: TextStyle(color: Colors.black, fontSize: 35)),
              ),
            ),
          );
        });
  }
}
