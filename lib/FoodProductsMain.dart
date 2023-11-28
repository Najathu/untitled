import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/dummyproducts.2.dart';

import 'FoodProductList.dart';
void main(){
  runApp(MaterialApp(home: FoodProductMain(),
  routes: {
    'dummyP':(context) => FoodProductList(),
  },));
}
class FoodProductMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Product Home"),
      ),
      body: ListView(
        children: dummyProducts2.map((Product) => TextButton(
            onPressed: () => gotoNext(context, Product["id"]),
            child: Text(
              "${Product["name"]}",
              style: TextStyle(fontSize: 30,),
            ))).toList()
      ),
    );
  }

void  gotoNext(BuildContext context, Product) {
    Navigator.of(context).pushNamed("dummyP", arguments: Product);
}
}
