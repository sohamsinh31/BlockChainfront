import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathonui/Utils/routes.dart';
import 'package:hackathonui/widgets/gredient.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {
  String username = "";
  MyDrawer({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "";
    return Drawer(
      backgroundColor: Vx.gray900,
      child: Container(
        decoration: Gredientes.getBoxDecoration(context),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Vx.gray400),
                margin: EdgeInsets.zero,
                accountName: Text(username),
                accountEmail: Text(username + "@gmail.com"),
                currentAccountPicture: Image.asset("assets/images/login1.png").circle()
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              iconColor:Colors.yellow,
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.lightBlue),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              iconColor:Colors.yellow,
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.blue),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.settings);
              },
              leading: Icon(Icons.settings),
              iconColor:Colors.yellow,
              title: Text(
                "Settings",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.blue),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.settings);
              },
              leading: Icon(CupertinoIcons.antenna_radiowaves_left_right),
              iconColor:Colors.yellow,
              title: Text(
                "My Network",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.blue),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.settings);
              },
              leading: Icon(Icons.logout),
              iconColor:Colors.yellow,
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
