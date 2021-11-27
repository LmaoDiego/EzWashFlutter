import 'package:flutter/material.dart';
import 'package:ezwashflutter/most_visited.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Expanded(child: Image.network('https://lavaderodeautoscarwash.com/wp-content/uploads/2019/02/3-ma%CC%81quinas-para-lavado-de-autos-en-Peru.jpg')),
          Expanded(child: Column(
            children: [
              Text("Más visitados", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              Expanded(child: MostVisited())
            ],
          )),
    ]);
  }
}
