import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/ProductList.dart';
import 'package:untitled/dummydata.dart';

void main() {
  runApp(MaterialApp(
    home: ProductMain(),
    routes: {
      'secondpage': (context) => ProductList(),
    },
  ));
}

class ProductMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Home"),
      ),
      body: ListView(
          children: dummyproducts
              .map((product) => TextButton(
                  onPressed: () => gotoNext(context, product["id"]),
                  child: Text(
                    "${product["name"]}",
                    style: TextStyle(fontSize: 20),
                  )))
              .toList()),
    );
  }

  void gotoNext(BuildContext context, product) {
    Navigator.of(context).pushNamed("secondpage", arguments: product);
  }
}
