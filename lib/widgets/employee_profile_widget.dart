import 'package:flutter/material.dart';
import 'package:ezwashflutter/models/employee.dart';
import 'package:ezwashflutter/models/catalog.dart';
class DetailWidget extends StatelessWidget {
  final Item item;
  const DetailWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(children: [Text("Información General"), TextButton(onPressed: (){}, child: Text("Editar")),],),
          Row(children: [
            Image.asset('assets/car1.jpg', height: 200, width: 200,),
            Column(
              children: [
                //validar margenes
                Text(item.name),
                Text(item.desc),
                Text(item.address),
                Text(item.schedule),
              ],
            ),
          ],
          ),

        ],
      ),

    );
  }
}