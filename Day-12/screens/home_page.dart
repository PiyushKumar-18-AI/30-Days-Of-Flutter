import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/catalog.dart';
import 'package:flutter_tutorial/widgets/drawer.dart';
import 'package:flutter_tutorial/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "PK";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: ((context, index) {
              return ProductWidget(item: CatalogModel.items[index]);
            })),
      ),
      drawer: MyDrawer(),
    );
  }
}
