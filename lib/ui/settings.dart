import 'package:diploma_hub/widgets/drawer_nav.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      drawer: DrawerNav(),
      body: Container(
        child: Text('Settings'),
      ),
    );
  }
}
