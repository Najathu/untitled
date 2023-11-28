import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: Sliversseg(),
    );
  }));
}

class Sliversseg extends StatelessWidget {
  var icnn = [Icons.hotel, Icons.restaurant, Icons.local_cafe];
  var ttext = ["Hotel", "Restaurent", "cafe"];
  var colr = [Colors.pinkAccent, Colors.blue, Colors.orangeAccent];
  var img = ["assets/icons/bedd.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 150,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Center(
                child: Text(
              "Type your Location",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            )),
          ),
          leading: Icon(Icons.menu),
          title: Padding(
            padding: const EdgeInsets.only(top: 30),
            //  child: Center(child: Text("Type your Location")),
          ),
          //elevation: 0,
          actions: [Icon(Icons.favorite)],
          bottom: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Kakkanad,Kochi",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 35, right: 15, left: 15),
                child: Card(
                  color: colr[index],
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Center(
                        child: Column(children: [
                          Icon(
                            icnn[index],
                            color: Colors.white,
                          ),
                          Text(
                            ttext[index],
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
              );
            },
            childCount: colr.length,
          ),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              alignment: Alignment.topCenter,
              height: 250,
              width: 100,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage('assets/icons/bedd.png',),
                            height: 130,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),

                        ),
                        Positioned(child: Container(child: Center(child: Text("\$40")),color: Colors.white,height: 30,width: 50,
                        ),right: 20,
                          bottom: 20,)
                      ],
                    ),
                    // icon
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Text(
                          "Awesome Room near Boddha",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: Text(
                        "Boddha, kathaamndu",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star_half,color: Colors.green,),
                        Text(
                          "(220 reviews)",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ) // text
                  ],
                ),
              ),
            );
          }),
          // Container(
          //   height: 1000,
          //   color: Colors.pink,
          // ),
        ),
      ]),
    );
  }
}
