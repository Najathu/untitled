import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FoodProductList.dart';
import 'FoodProductsMain.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: LoginPgeFoodProd(),
        routes: {
          'dummyP': (context) => FoodProductList(),
          'FoodMain': (context) => FoodProductMain(),
        });
  }));
}

class LoginPgeFoodProd extends StatefulWidget {
  @override
  State<LoginPgeFoodProd> createState() => _LoginPgeFoodProdState();
}

class _LoginPgeFoodProdState extends State<LoginPgeFoodProd> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        children: [
          Image.asset(
            "namassets/animations/icons8-circled-user-male-skin-type-6.gif",
            height: 125,
            width: 125,
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "UserName",
                prefixIcon: Icon(Icons.person),
                labelText: "UserName",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
            validator: (uname) {
              if (uname!.isEmpty || uname!.contains("@") || uname.contains("."))
                return "Enter valid Username";
              else {
                return null;
              }
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            obscureText: showpass,
            obscuringCharacter: '*',
            decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.password),
                labelText: "Password",
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      if (showpass) {
                        showpass = false;
                      } else {
                        showpass = true;
                      }
                    });
                  },
                  icon: Icon(showpass == true
                      ? Icons.visibility_off
                      : Icons.visibility),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
            validator: (uname) {
              if (uname!.isEmpty || uname!.contains("@") || uname.contains("."))
                return "Enter valid Password";
              else {
                return null;
              }
            },
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40,
            width: 100,
            child: ElevatedButton(
                onPressed: () {
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FoodProductMain()));
                  }
                },
                child: Text("LOGIN")),
          ),
        ],
      ),
    );
  }
}
