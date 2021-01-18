import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            tooltip: 'Menu',
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          Text(
            'Diploma Hub',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          IconButton(
            tooltip: 'Notifications',
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              debugPrint('Notificaton Toggle');
            },
          )
        ],
      ),
    );
  }
}
