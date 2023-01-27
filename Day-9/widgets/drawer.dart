import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imgURL = "https://avatars.githubusercontent.com/u/68659006?v=4";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                accountName: Text("Piyush Kumar"),
                accountEmail: Text("piyushkumar000018@gmail.com"),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imgURL)),
              )),
          ListTile(
            contentPadding: EdgeInsets.only(left: 25),
            leading: Icon(CupertinoIcons.home, color: Colors.white),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 25),
            leading: Icon(CupertinoIcons.profile_circled, color: Colors.white),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 25),
            leading: Icon(CupertinoIcons.mail, color: Colors.white),
            title: Text(
              "Email Me",
              textScaleFactor: 1.2,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 25),
            leading: Icon(CupertinoIcons.settings, color: Colors.white),
            title: Text(
              "Settings",
              textScaleFactor: 1.2,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 25),
            leading: Icon(CupertinoIcons.arrow_uturn_left_square,
                color: Colors.white),
            title: Text(
              "Logout",
              textScaleFactor: 1.2,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
    );
  }
}
