import 'package:flutter/material.dart';

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
    String by = 'Ashish K';
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App")
      ),
          body: Center(
              child: Container(
                  child: Text('Developed by ${by}')
              )
          ),
      drawer: Drawer()
    );
  }
}

