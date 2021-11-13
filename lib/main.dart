import 'package:ezwashflutter/login.dart';
import 'package:ezwashflutter/models/employee.dart';
import 'package:ezwashflutter/user_profile.dart';
import 'package:ezwashflutter/washer_profile.dart';
import 'package:ezwashflutter/widgets/employee_profile_widget.dart';
import 'package:flutter/material.dart';

import 'items.dart';


void main(){
  runApp(First());
}

class First extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Ez Wash APP",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text('EzWash'),
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: RaisedButton(
                  child: Text(
                    'Perfil',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute<Null>(
                      builder: (BuildContext context){
                        return new UserProfile();
                      }
                    ));
                  },
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  color: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: RaisedButton(
                  child: Text(
                    'Items',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute<Null>(
                        builder: (BuildContext context){
                          return new Items();
                        }
                    ));
                  },
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  color: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
              //boton washer
              //-----------------------------------------------------------------------------------
              Container(
                padding: EdgeInsets.all(20),
                child: RaisedButton(
                  child: Text(
                    'Washer',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute<Null>(
                        builder: (BuildContext context){
                          return new Employees();
                        }
                    ));
                  },
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  color: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              )
            ],
          ),
        )
    );

  }
}




