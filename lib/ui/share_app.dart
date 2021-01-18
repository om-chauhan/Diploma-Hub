import 'package:diploma_hub/widgets/drawer_nav.dart';
import 'package:flutter/material.dart';

class ShareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share App'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      drawer: DrawerNav(),
      body: Container(
        child: Text('Share Page'),
      ),
    );
  }
}
