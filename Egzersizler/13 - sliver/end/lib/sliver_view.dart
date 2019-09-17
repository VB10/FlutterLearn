import 'package:flutter/material.dart';

class SliverView extends StatefulWidget {
  @override
  _SliverViewState createState() => _SliverViewState();
}

class _SliverViewState extends State<SliverView> {
  List<Widget> widgets = [];
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 20; i++) {
      widgets.add(Card(
        child: Container(
          height: 100,
          color: Colors.red.withRed(20 * i),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          sliverAppBar,
          SliverList(
            delegate: SliverChildListDelegate([...widgets]),
          ),
          // sliverGrid
          sliverGridExtent
        ],
      ),
    );
  }

  Widget get sliverAppBar => SliverAppBar(
        expandedHeight: 200,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          // background: Image.network(
          //   'http://lorempixel.com/400/200',
          //   fit: BoxFit.fill,
          // ),
          title: Text("Welcome"),
          centerTitle: false,
        ),
      );

  Widget get sliverList => SliverList(
        delegate: SliverChildListDelegate([...widgets]),
      );

  Widget get sliverGrid => SliverGrid.count(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        childAspectRatio: 1,
        children: <Widget>[...widgets],
      );

  Widget get sliverGridExtent => SliverGrid.extent(
        maxCrossAxisExtent: 50,
        childAspectRatio: 1,
        children: <Widget>[...widgets],
      );
}
