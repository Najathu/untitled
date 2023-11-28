import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: datatable(),
  ));
}

class datatable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),color: Colors.white30),
          child: DataTable(
            columns: [
              DataColumn(
                label: Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                  label: Text(
                "Age",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              DataColumn(
                  label: Text(
                "Role",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              DataColumn(
                label: Text("Salary",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("anu")),
                DataCell(Text("24")),
                DataCell(Text("Sales Manager")),
                DataCell(Text("18000")),
              ]),
              DataRow(cells: [
                DataCell(Text("aji")),
                DataCell(Text("20")),
                DataCell(Text("Manager")),
                DataCell(Text("30000")),
              ]),
              DataRow(cells: [
                DataCell(Text("naju")),
                DataCell(Text("26")),
                DataCell(Text("Develepor")),
                DataCell(Text("45000")),
              ]),
              DataRow(cells: [
                DataCell(Text("poomon")),
                DataCell(Text("25")),
                DataCell(Text("Designer")),
                DataCell(Text("45000")),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
