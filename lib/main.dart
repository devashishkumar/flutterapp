import 'package:flutter/material.dart';
import 'package:practiceapp/pages/homepage.dart';

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
      home: HomePage(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          primarySwatch: Colors.deepPurple,
          brightness: Brightness.dark,
      ),
    );
  }

  getData({@required int defaultValue = 10}) {
    return defaultValue * defaultValue;
  }
}

