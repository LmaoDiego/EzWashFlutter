import 'package:ezwashflutter/home.dart';
import 'package:ezwashflutter/main.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: LoginPage(),
    );
  }
}


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image(
                image: AssetImage("assets/fondo.jpg"),
                fit: BoxFit.cover,
                color: Colors.black54,
                colorBlendMode: BlendMode.hardLight,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Image.asset('assets/ezwash.jpg', width: 130, height: 130,),
                  Form(
                      child: Theme(
                          data: ThemeData(
                              brightness: Brightness.dark, primarySwatch: Colors.teal,
                              inputDecorationTheme: InputDecorationTheme(
                                  labelStyle: TextStyle(
                                      color: Colors.limeAccent,
                                      fontSize: 20
                                  )
                              )
                          ),
                          child: Container(
                            padding: EdgeInsets.all(40),
                            child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: "Usuario"
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: "Contraseña"
                                  ),
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 30)
                                ),
                                MaterialButton(
                                  height: 55,
                                  //minWidth: 60,
                                  color: Colors.teal,
                                  textColor: Colors.white,
                                  child: Icon(FontAwesomeIcons.signInAlt),
                                  onPressed: (){
                                    Navigator.of(context).push(MaterialPageRoute<Null>(
                                        builder: (BuildContext context){
                                          return Main();
                                        }
                                    ));
                                  },
                                  splashColor: Colors.deepOrange,
                                )
                              ],
                            ),
                          )
                      )
                  )
                ],
              )
            ]
        )
    );
  }
}