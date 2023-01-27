// Started working on Drawers

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "PK";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
          child: Center(
        child:
            Container(child: Text("Welcome to $days Days of Flutter by $name")),
      )),
      drawer: MyDrawer(),
    );
  }
}
