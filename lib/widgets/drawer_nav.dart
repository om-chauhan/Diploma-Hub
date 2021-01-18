import 'package:diploma_hub/ui/about.dart';
import 'package:diploma_hub/ui/help.dart';
import 'package:diploma_hub/ui/home.dart';
import 'package:diploma_hub/ui/request.dart';
import 'package:diploma_hub/ui/settings.dart';
import 'package:diploma_hub/ui/share_app.dart';
import 'package:flutter/material.dart';

class DrawerNav extends StatefulWidget {
  @override
  _DrawerNavState createState() => _DrawerNavState();
}

class _DrawerNavState extends State<DrawerNav> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image(
                height: 70.0,
                width: 70.0,
                image: AssetImage('assets/neet.png'),
              ),
            ),
            SideMenuitem(),
          ],
        ),
      ),
    );
  }
}

class SideMenuitem extends StatefulWidget {
  @override
  _SideMenuitemState createState() => _SideMenuitemState();
}

class _SideMenuitemState extends State<SideMenuitem> {
  List<String> menuName = [
    "Home",
    "Share App",
    "Settings",
    "Request",
    "About",
    "Help",
  ];
  List<dynamic> menuPage = [
    Home(),
    ShareApp(),
    Settings(),
    Request(),
    About(),
    Help(),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: menuName.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              child: MaterialButton(
                child: Text(
                  menuName[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 25.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  if (menuPage[index] == menuPage[0]) {
                    return Navigator.pushNamed(context, '/home');
                  } else if (menuPage[index] == menuPage[1]) {
                    return Navigator.pushNamed(context, '/shareApp');
                  } else if (menuPage[index] == menuPage[2]) {
                    return Navigator.pushNamed(context, '/settings');
                  } else if (menuPage[index] == menuPage[3]) {
                    return Navigator.pushNamed(context, '/request');
                  } else if (menuPage[index] == menuPage[4]) {
                    return Navigator.pushNamed(context, '/about');
                  } else if (menuPage[index] == menuPage[5]) {
                    return Navigator.pushNamed(context, '/help');
                  } else {
                    return Navigator.pushNamed(context, '/myApp');
                  }
                },
              ),
            ),
            Divider(
              color: Colors.green,
            ),
          ],
        );
      },
    );
  }
}
