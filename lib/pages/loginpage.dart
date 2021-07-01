import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Center(
        child: Text("User Login", style: TextStyle(
          fontSize: 20,
          color: Colors.blue
        ))
      )
    );
  }
}
