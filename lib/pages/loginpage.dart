import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practiceapp/utils/customroutes.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Flutter App")
        ),
        body: SingleChildScrollView(
      child:Column(
        children: [
          Image.asset("assets/images/login.png", fit: BoxFit.cover),
          SizedBox(
            height: 10,
          ),
          Text("Login", style:
            TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Username", labelText: "Username"
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Password", labelText: "Password"
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () =>{
                  Navigator.pushNamed(context, CustomRoutes.homeRoute)
                }, child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(100, 50)),

                )
              ],
            ),
          )
        ],
      )
    )
    );
  }
}
