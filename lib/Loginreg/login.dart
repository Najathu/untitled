import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/Loginreg/registration.dart';

import 'homepageeeee.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: Loginreg(),
    );
  }));
}

class Loginreg extends StatefulWidget {
  @override
  State<Loginreg> createState() => _LoginregState();
}

class _LoginregState extends State<Loginreg> {
  final name_controller = TextEditingController();
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;

  late bool newuser;
  late String uname;
  late String pswd;
  late String name;

  @override
  void initState() {
    check_if_already_login();
    getvalue();
  }

  void getvalue() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      name = logindata.getString('name')!;
      uname = logindata.getString('username')!;
      pswd = logindata.getString('password')!;
    });
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('newuser') ?? true);

    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => hompagee()));
    }
  }

  @override
  void dispose() {
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Reg"),
      ),
      body: Column(
        children: [
          Image(image: AssetImage("assets/icons/gle.png")),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: (OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
                labelText: "username"),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.password_sharp),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "password"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                String username = username_controller.text;
                String password = password_controller.text;
                if (username != '' &&
                    password != '' &&
                    username == uname &&
                    password == pswd) {
                  print('Successfull');
                  logindata.setBool('newuser', false);
                }

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => hompagee()));
              },
              child: Text("Login")),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => registrationpage()));
              },
              child: Text("Not a user  !! Create a new account"))
        ],
      ),
    );
  }
}
