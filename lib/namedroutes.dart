import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gridview.dart';
import 'listbuilder.dart';

void main() {
  runApp(MaterialApp(home: NameRoutes(),
      routes: { 'GripPage': (context) => Gridview(),
        'List': (context) => Listbuilder()
        ,
      })
  );
}

class NameRoutes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(onPressed: () {
            Navigator.of(context).pushNamed('GripPage');
          }, child: Text("To GridPage")),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: () {
            Navigator.of(context).pushNamed('List');
          }, child: Text("To List Page"))
        ],),
      ),
    );
  }
}