import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/dummydata.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final product = dummyproducts.firstWhere((product) => product["id"] == id);
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(product["image"]),
          ),
          Text(
            "${product["name"]}",
            style: TextStyle(fontSize: 30),
          ),
          Text(("${product["description"]}")),
        ],
      ),
    );
  }
}
