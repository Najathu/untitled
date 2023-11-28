import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/dummyproducts.2.dart';

class FoodProductList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   final id =ModalRoute.of(context)?.settings.arguments;
   final Product = dummyProducts2.firstWhere((Product) => Product["id"] == id);
   return Scaffold(
     appBar: AppBar(title: Text("Food Items ",),),
     body: ListView(
       children: [
         SizedBox(height: 100,
         width: 100,
         child: Image.network(Product["image"]),),
         Text("${Product["name"]}",style:TextStyle(fontSize: 30) ,),
         Text(("${Product["description"]}")),

         TextButton(onPressed: (){}, child: Text("PLACE ORDER")),

       ],
     ),
   );
  }

}