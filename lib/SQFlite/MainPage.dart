import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:mainPageSqflite() ,));
}
class mainPageSqflite extends StatefulWidget {
  @override
  State<mainPageSqflite> createState() => _mainPageSqfliteState();
}

class _mainPageSqfliteState extends State<mainPageSqflite> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Notes"),),
      body: isLoading ?
      Center(child: CircularProgressIndicator())
          : ListView.builder
        (itemBuilder: (context, index) {
        return Card(
          child: ListTile(
           // title:,
           // subtitle:,
            trailing: SizedBox(
              width: 100, child:
            Row(
              children: [IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                IconButton(onPressed: () {}, icon: Icon(Icons.delete))
              ],),),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>showForm(null), child: Icon(Icons.add),),




    );


  }

  void showForm(int? id) async {
   if (id != null ){

   }
   showModalBottomSheet(context: context,
       elevation: 3,
       isScrollControlled: true,
       builder: (context)=>Container(
         padding: EdgeInsets.only(
           left: 10,
           right: 10,
           top: 10,
           bottom: MediaQuery.of(context).viewInsets.bottom+120),
         child:Column(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.end,

           children: [
             TextField(
               decoration: InputDecoration(hintText: "Title",border: OutlineInputBorder()),
             ),SizedBox(height: 10,),
             TextField(decoration: InputDecoration(hintText: "Enter Note",border: OutlineInputBorder()),),
             SizedBox(height: 10,),
             ElevatedButton(onPressed: (){}, child: Text("Add Note"))
           ],
         ),
         ),
       );
  }
}