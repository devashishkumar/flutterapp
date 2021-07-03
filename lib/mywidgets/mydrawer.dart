import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  final _imageUrl = "https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Container(
        color: Colors.blue,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
            accountName: Text("Ashish"),
            accountEmail: Text("ashishkumar@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(_imageUrl),
                ),
          )),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white
            ), title: Text(
            "Home", textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white
            )
          ),
          )
        ],
      )
    )
    );
  }
}

