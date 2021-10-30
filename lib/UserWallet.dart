import 'package:flutter/material.dart';

class UserWallet extends StatefulWidget {
  @override
  _UserWalletState createState() => _UserWalletState();
}

class _UserWalletState extends State<UserWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tu Billetera'),
      ),

      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Tus metodos de pago :',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'rbold',
              ),
            ),
          ),
          Image.asset('assets/yape.png',height: 100,),
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
            },
//***YARDS//
          ),
          Image.asset('assets/plin.png',height: 80,),
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
            },

          ),
          Image.asset('assets/visa.jpg',height: 80,),
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
            },

          ),
          Image.asset('assets/mastercard.png',height: 80,),
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
            },

          ),
          Container(
            margin: EdgeInsets.fromLTRB(100, 10, 100, 10),
            child: RaisedButton(
              child: Text(
                'Agregar Nuevo',
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


        ],
      ),

    );;
  }
}
