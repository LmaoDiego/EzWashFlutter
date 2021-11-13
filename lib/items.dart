import 'package:ezwashflutter/widgets/item_widget.dart';
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
          title: Text("CarWashers"),
        ),

        body: ListView.builder(
            itemCount: CatalogModel.items.length,

            itemBuilder: (context,index){


              return ItemWidget(item: CatalogModel.items[index]);
            }

        ),
      ),
    );
  }
}