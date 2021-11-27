import 'package:ezwashflutter/widgets/add_car.dart';
import 'package:flutter/material.dart';
class MyCars extends StatefulWidget {
  @override
  _MyCarsState createState() => _MyCarsState();
}

class _MyCarsState extends State<MyCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tus Autos'),
      ),

      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(150, 10, 150, 10),
            child:
            ElevatedButton(
              child:
              Text("Agregar"), onPressed: (){
              Navigator.of(context).push(MaterialPageRoute<Null>(
                  builder: (BuildContext context){
                    return Imagen();
                  }
              )
              );
            },
            ),
          ),
          Container(

            padding: EdgeInsets.all(20),
            child: Image.asset('assets/car1.jpg',height: 100,),
          ),
          Container(
            padding: EdgeInsets.all(2),
            alignment: Alignment.center,
            child: Text(
              'Car 1',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'rbold',
              ),
            ),
          ),
           ListTile(
          title: Text('Modelo :Toyota Supra'),
          subtitle: Text('Placa      : 9CY66'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(150, 10, 150, 10),
            child: RaisedButton(
              child: Text(
                'Editar',
                style: TextStyle(
                    fontSize: 15
                ),
              ),

              onPressed: (){
              },

              padding: EdgeInsets.symmetric(),
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
            ),
          ),
          Container(

            padding: EdgeInsets.all(20),
            child: Image.asset('assets/car1.jpg',height: 100,),
          ),
          Container(
            padding: EdgeInsets.all(2),
            alignment: Alignment.center,
            child: Text(
              'Car 2',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'rbold',
              ),
            ),
          ),
          ListTile(
            title: Text('Modelo : Pagani'),
            subtitle: Text('Placa      : P7776'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(150, 10, 150, 10),
            child: RaisedButton(
              child: Text('Editar', style: TextStyle(fontSize: 15),), onPressed: (){},
              padding: EdgeInsets.symmetric(),
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
            ),
          ),
        ],
      ),
    );
  }
}