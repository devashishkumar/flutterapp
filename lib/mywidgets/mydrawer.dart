import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practiceapp/utils/customroutes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  final _imageUrl = "https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Container(
        color: Colors.deepPurple,
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
          ),
          ListTile(
            leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white
            ), title: Text(
              "My Profile", textScaleFactor: 1.2,
              style: TextStyle(
                  color: Colors.white
              )
          ),
          ),
          ListTile(
            leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white
            ), title: Text(
              "Email", textScaleFactor: 1.2,
              style: TextStyle(
                  color: Colors.white
              )
          ),
          ),
          ListTile(
            title: Text(
              "Logout", textScaleFactor: 1.2,
              style: TextStyle(
                  color: Colors.white
              )
          ), onTap: () => {
            Navigator.pushNamed(context, CustomRoutes.loginRoute)
          },
          )
        ],
      )
    )
    );
  }
}

