import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final _database = FirebaseDatabase.instance;
  List<String> cartItems = [];
  double totalPrice = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartItems[index]),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total: \$${totalPrice}'),
            RaisedButton(
              child: Text('Checkout'),
              onPressed: () {
                // TODO: Checkout the order.
              },
            ),
          ],
        ),
      ),
    );
  }
}
