import 'package:ezwashflutter/models/catalog.dart';
import 'package:ezwashflutter/widgets/employee_profile_widget.dart';
import 'package:ezwashflutter/widgets/employee_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'models/employee.dart';

class Employees extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Employees"),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return DetailWidget(
                      item: CatalogModel.items[index],
                    );
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return EmployeeWidget(employee: Group.employees[index]);
                  }),
            )
            //
          ],
        ),
      ),
    );
  }
}
