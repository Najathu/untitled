import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
        home: sliverswork(),
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false),
  ));
}

class sliverswork extends StatelessWidget {
  var icon = [(Icons.home), (Icons.restaurant), (Icons.local_cafe)];

  var name = ["Hotel", "Restuarant", "Cafe"];

  var color = [Colors.pink, Colors.blueAccent, Colors.deepOrange];

  var image = [
    "assets/icons/bedd.png",
    "assets/icons/bedd3.jpeg",
    "assets/icons/bedd4.jpeg",
  ];
  var text = [
    "Awesome room near kakkanad",
    "peacefull rooms",
    "Beautifull rooms"
  ];

  var sub = [
    "kakkanad,kochi",
    "kakkanad,kochi",
    "kakkanad,kochi",
  ];

  var icons = [Icons.star, Icons.star, Icons.star];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
          floating: true,
          pinned: true,
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: Icon(Icons.menu),
          ),
          title: Center(child: Text("Type your Location")),
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: Icon(Icons.favorite),
            ),
          ],
          bottom: AppBar(
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "kakkanad Kochi",
                      prefixIcon: Icon(Icons.search)),
                ),
              ))),
      SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Card(
                  color: color[index],
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Icon(
                            icon[index],
                            color: Colors.white,
                          ),
                          Text(
                            name[index],
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )),
            );
          }, childCount: name.length),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 60, crossAxisSpacing: 20)),
      SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Image(
                          image: AssetImage(image[index]),
                        ),
                      ],
                    ),
                    ListTile(
                      title: Text(
                        text[index],
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        sub[index],
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Container(child: Row(children: [
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star_half,color: Colors.green,),
                      Text("(220 reviews)")
                    ],),),

                  ],
                )),
          ),
        );
      }, childCount: image.length))
    ]));
  }
}
