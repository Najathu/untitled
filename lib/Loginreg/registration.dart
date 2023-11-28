import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

class registrationpage extends StatefulWidget {
  @override
  State<registrationpage> createState() => _registrationpageState();
}

class _registrationpageState extends State<registrationpage> {
  final name_controller = TextEditingController();
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  late SharedPreferences logindata;

  @override
  void dispose() {
    name_controller.dispose();
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: name_controller,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_box),
                border: (OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                )),
                labelText: "name"),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: username_controller,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                labelText: "Username"),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: password_controller,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.password_sharp),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "Password"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                logindata = await SharedPreferences.getInstance();

                String uname = name_controller.text;
                String user = username_controller.text;
                String passd = password_controller.text;

                if (user != '' && passd != '') {
                  logindata.setString('name', uname);
                  logindata.setString('username',user);
                  logindata.setString('password',passd);

                  print(user);
                  print(passd);

                  Navigator.push(context as BuildContext,
                      MaterialPageRoute(builder: (context) => Loginreg()));
                }
              }, child: Text("register"),
          )
      ,
        ],
      ),
    );
  }


}
