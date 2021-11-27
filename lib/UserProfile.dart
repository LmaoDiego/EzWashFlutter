import 'package:ezwashflutter/MyCars.dart';
import 'package:ezwashflutter/UserWallet.dart';
import 'package:flutter/material.dart';


class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Tu Perfil'),
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.all(0),
      //     children: [
      //       UserAccountsDrawerHeader(
      //         accountName: Text('Fernando Olano'),
      //         accountEmail: Text('UPC@edu.pe'),
      //         currentAccountPicture: Image.asset('assets/user.png'),
      //       ),
      //       ListTile(
      //         title: Text('Mi Perfil'),
      //         leading: Icon( Icons.person),
      //         onTap: (){
      //           Navigator.of(context).push(MaterialPageRoute<Null>(
      //               builder: (BuildContext context){
      //                 return new UserProfile();
      //               }
      //           ));
      //         }
      //         ,
      //       ),
      //       ListTile(
      //         title: Text('Mis Autos'),
      //         leading: Icon( Icons.car_rental_sharp),
      //         onTap: (){
      //           Navigator.of(context).push(MaterialPageRoute<Null>(
      //               builder: (BuildContext context){
      //                 return new MyCars();
      //               }
      //           ));
      //         }
      //         ,
      //       ),
      //       ListTile(
      //         title: Text('Mi Billetera'),
      //         leading: Icon( Icons.account_balance_wallet),
      //         onTap: (){
      //           Navigator.of(context).push(MaterialPageRoute<Null>(
      //               builder: (BuildContext context){
      //                 return new UserWallet();
      //               }
      //           ));
      //         }
      //         ,
      //       ),
      //     ],
      //   ),
      // ),
      body: ListView(
        children: [
          Container(
              child: Image.asset('assets/user.png',height: 90,),
    ),
          Container(
            padding: EdgeInsets.all(20),

            child: Text(
              'Fernando Olano',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'rbold',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0,horizontal: 20),
            child: Text(
              'Direccionn :   Av. OScar Benavides 1508 - Lima',
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'rbold',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0,horizontal: 20),
            child: Text(
              'Edad           :   25',
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'rbold',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0,horizontal: 20),
            child: Text(
              'Sexo           :   M',
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'rbold',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0,horizontal: 20),
            child: Text(
              'Telefono    :   982369999',
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'rbold',
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text(
                'Editar',
                style: TextStyle(
                    fontSize: 18
                ),
              ),

              onPressed: (
                  ){

              } ,
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
