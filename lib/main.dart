// @dart=2.9
import 'package:ezwashflutter/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'MyCars.dart';
import 'UserProfile.dart';
import 'UserWallet.dart';
import 'directions_model.dart';
import 'directions_repository.dart';
import 'home.dart';
import 'items.dart';
import 'maps.dart';

void main(){
  runApp(First());
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EzWash APP",
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: Main(),

      home: LoginPage(),
    );
  }
}
class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _selectButtonNavigation = 0;
  final List<Widget> _paginas = [
    Home(),
    Items(),
    MapScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Ez Wash APP",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            // leading: IconButton(                          // 2
            //   icon: const Icon(Icons.menu),
            //   onPressed: (){},
            // ),
            title: const Text('Ez Wash'),
            actions: [
              IconButton(
                icon:const Icon(Icons.search),              // 4
                onPressed: (){},
              ),
              IconButton(
                icon:const Icon(Icons.favorite),        //5
                onPressed: (){},
              )
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                UserAccountsDrawerHeader(
                  accountName: const Text('Fernando Olano'),
                  accountEmail: const Text('UPC@edu.pe'),
                  currentAccountPicture: Image.asset('assets/user.png'),
                ),
                ListTile(
                  title: const Text('Mi Perfil'),
                  leading: const Icon( Icons.person),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute<Null>(
                        builder: (BuildContext context){
                          return UserProfile();
                        }
                    ));
                  }
                  ,
                ),
                ListTile(
                  title: const Text('Mis Autos'),
                  leading: const Icon( Icons.car_rental_sharp),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute<Null>(
                        builder: (BuildContext context){
                          return MyCars();
                        }
                    ));
                  }
                  ,
                ),
                ListTile(
                  title: const Text('Mi Billetera'),
                  leading: const Icon( Icons.account_balance_wallet),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute<Null>(
                        builder: (BuildContext context){
                          return UserWallet();
                        }
                    ));
                  }
                  ,
                ),
              ],
            ),
          ),
          // body: Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       padding: EdgeInsets.all(20),
          //       child: RaisedButton(
          //         child: const Text(
          //           'Perfil',
          //           style: TextStyle(
          //               fontSize: 18
          //           ),
          //         ),
          //         onPressed: (){
          //           Navigator.of(context).push(MaterialPageRoute<Null>(
          //             builder: (BuildContext context){
          //               return UserProfile();
          //             }
          //           ));
          //         },
          //         padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          //         color: Colors.lightBlueAccent,
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(15)
          //         ),
          //       ),
          //     ),
          //     Container(
          //       padding: const EdgeInsets.all(20),
          //       child: RaisedButton(
          //         child: const Text(
          //           'Items',
          //           style: TextStyle(
          //               fontSize: 18
          //           ),
          //         ),
          //         onPressed: (){
          //           Navigator.of(context).push(MaterialPageRoute<Null>(
          //               builder: (BuildContext context){
          //                 return Items();
          //               }
          //           ));
          //         },
          //         padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          //         color: Colors.lightBlueAccent,
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(15)
          //         ),
          //       ),
          //     )
          //   ],
          // ),

          body: _paginas[_selectButtonNavigation],


          bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
              setState(() {
                _selectButtonNavigation = index;
              });
            },
            currentIndex: _selectButtonNavigation,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.house_siding), label: "Carwashes"),
              BottomNavigationBarItem(icon: Icon(Icons.add_location), label: "Maps"),

            ],
          ),
        )
    );

  }
}


