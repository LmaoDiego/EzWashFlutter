import 'package:flutter/material.dart';
import 'package:ezwashflutter/most_visited.dart';

import 'UserProfile.dart';
import 'maps.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Expanded(child: Image.network('https://lavaderodeautoscarwash.com/wp-content/uploads/2019/02/3-ma%CC%81quinas-para-lavado-de-autos-en-Peru.jpg')),
          Expanded(child: Column(
            children: [
              Text("Más visitados", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              Expanded(child: MostVisited()),
              // Container(
              //   padding: EdgeInsets.all(20),
              //   child: RaisedButton(
              //     child: const Text(
              //       'Buscar CarWashers en el mapa',
              //       style: TextStyle(
              //           fontSize: 18
              //       ),
              //     ),
              //     onPressed: (){
              //       Navigator.of(context).push(MaterialPageRoute<Null>(
              //           builder: (BuildContext context){
              //             return MapScreen();
              //           }
              //       ));
              //     },
              //     padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              //     color: Colors.lightBlueAccent,
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(15)
              //     ),
              //   ),
              // ),
            ],
          )),
    ]);
  }
}
