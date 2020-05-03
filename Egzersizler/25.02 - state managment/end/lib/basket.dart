import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/cart_model.dart';

class BasketView extends StatefulWidget {
  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<BasketView> {
  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartModel>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: cart.items.length,
            itemBuilder: (context, index) {
              return Text(cart.items[index].text);
            },
          ),
          Spacer(),
          Container(
            color: Colors.red,
            child: RichText(
              text: TextSpan(children: [
                TextSpan(text: "Total Price: "),
                TextSpan(
                    text: cart.totalPrice.toString(),
                    style: TextStyle(
                        color: Colors.yellow, fontWeight: FontWeight.w600))
              ]),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
