import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';


}

class Loginn_ extends StatefulWidget {
  @override
  State<Loginn_> createState() => _Loginn_State();
}

class _Loginn_State extends State<Loginn_> {
  
  late SharedPreferences data;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  late bool newuser;
  
  @override
  void initState(){
    checkUser();
    super.initState();
  }
  void checkUser() async {
    data = await SharedPreferences.getInstance();
    newuser = (data.getBool('newuser')?? true);
    
    if (newuser == false){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>home_sharedP()));
    }
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
      ),
      body: Column(
        children: [



          Image(image: AssetImage("assets/icons/gle.png",)),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: username,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  labelText: "Username"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  labelText: "Password"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
         // ElevatedButton(onPressed: () {}, child: Text("Log_In"))
          ElevatedButton(onPressed: (){
            String uname=username.text;
            String pwd=password.text;

            if(uname !=''&& pwd !=''){
              print("Login Success");

              data.setString("username",uname);
              data.setBool("newuser", false);
              print(uname);
              
              Navigator.push(context, MaterialPageRoute(builder: (context)=>home_sharedP()));
    
          }}, child: Text("Log_In"),
          )
        ],
      ),
    );
  }
}
