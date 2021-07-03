import 'package:flutter/material.dart';
import 'package:practiceapp/mywidgets/mydrawer.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    int days = 45;
    double doubleVal = 40;
    String by = 'Ashish';
    return Scaffold(
      appBar: AppBar(
        // title: Text("Flutter App", textAlign: TextAlign.center,)
          title: new Center(child: new Text("Flutter App", textAlign: TextAlign.center))
      ),
          body: Center(
              child: Container(
                  child: Text('Welcome to app')
              )
          ),
      drawer: MyDrawer()
    );
  }
}

