import 'package:ezwashflutter/widgets/itemWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'models/catalog.dart';

class Items extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Car Washes"),
        ),

        body: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context,index){
              return ItemWidget(item: CatalogModel.items[index]);
            },
        ),
      ),
    );
  }
}

