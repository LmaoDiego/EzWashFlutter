import 'package:flutter/material.dart';
import 'package:ezwashflutter/models/employee.dart';

class EmployeeWidget extends StatelessWidget {
  final Employee employee;
  const EmployeeWidget({Key? key, required this.employee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0,
        color: Colors.lightBlueAccent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.network(employee.image,height: 50,width: 50,),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(employee.name,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18))),

            ),
            subtitle: Center(child: Text(employee.age.toString(),style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15))),
          ),
        ),
      ),

    );
  }
}