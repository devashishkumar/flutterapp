import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practiceapp/utils/customroutes.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  final _formKey = GlobalKey<FormState>();

  /**
   * user login and validate
   */
  userLogin(BuildContext context) {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      Navigator.pushNamed(context, CustomRoutes.homeRoute);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("")
        ),
        body: SingleChildScrollView(
          child:Form(
            key: _formKey,
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
                  onChanged: (value) {
                    username = value;
                    setState(() {

                    });
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Username", labelText: "Username"
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Username can not be empty";
                    }
                    return null;
                  },
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password can not be empty";
                      } else if (value.length < 10) {
                        return "Password length should be at least 10";
                      }
                      return null;
                    }
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () => userLogin(context), child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(100, 50)),

                )
              ],
            ),
          )
        ],
      )
        )
    )
    );
  }
}
