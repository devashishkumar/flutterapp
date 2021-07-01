import 'package:flutter/material.dart';
import 'package:practiceapp/homepageold.dart';
// import 'package:practiceapp/homepageold.dart';
import 'package:practiceapp/pages/homepage.dart';
import 'package:practiceapp/pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    getData();
    return MaterialApp(
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: HomePage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
          primarySwatch: Colors.deepPurple,
          brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },

    );
  }

  getData({@required int defaultValue = 10}) {
    return defaultValue * defaultValue;
  }
}

