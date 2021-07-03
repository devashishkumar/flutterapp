import 'package:flutter/material.dart';
import 'package:practiceapp/pages/homepage.dart';
import 'package:practiceapp/pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceapp/utils/customroutes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    return MaterialApp(
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: HomePage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
          primarySwatch: Colors.deepPurple,
          // brightness: Brightness.dark,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      routes: {
        "/": (context) => HomePage(),
        CustomRoutes.homeRoute: (context) => HomePage(),
        CustomRoutes.loginRoute: (context) => LoginPage(),
      },

    );
  }

}

