import 'package:flutter/material.dart';

class SampleWidget extends StatelessWidget {
  const SampleWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Welcome"),
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("data");
  }
}

class ContainerCustomWidget extends StatelessWidget {
  final Widget child;

  const ContainerCustomWidget({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: child,
    );
  }
}

class ContainerNullWidget extends StatelessWidget {
  final Widget child;

  const ContainerNullWidget({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.child != null ? child : CircularProgressIndicator(),
    );
  }
}

class ContainerVisibleWidget extends StatelessWidget {
  final Widget child;
  final bool visible;

  const ContainerVisibleWidget({Key key, this.child, @required this.visible})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Visibility(
        visible: visible,
        child: child,
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final int radius;

  const RoundedContainer({Key key, this.child, @required this.radius})
      : assert(radius > 0),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(radius.toDouble())),
      child: child,
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final Icon icon;
  final String text;

  const CustomButton({Key key, this.callback, this.icon, this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      onPressed: () {
        // Math Progress.
        this.callback();
      },
      icon: icon,
      label: Text(text),
    );
  }
}

class CustomCard extends StatelessWidget {
  final Color color;
  final Widget child;

  const CustomCard({Key key, this.color, this.child})
      : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: StadiumBorder(),
      color: this.color,
      child: this.child,
    );
  }
}
