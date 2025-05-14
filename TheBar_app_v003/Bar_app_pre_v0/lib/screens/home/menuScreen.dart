/*this will be the menu that pops up to get the menu items from firesbase*/
 */

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final _database = FirebaseDatabase.instance;
  List<String> menuItems = [];

  @override
  void initState() {
    super.initState();
    _database
        .ref('menu')
        .onChildAdded((event) => setState(() => menuItems.add(event.snapshot.value)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(menuItems[index]),
          );
        },
      ),
    );
  }
}