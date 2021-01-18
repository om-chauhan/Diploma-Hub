import 'package:flutter/material.dart';

class CivilHome extends StatefulWidget {
  @override
  _CivilHomeState createState() => _CivilHomeState();
}

class _CivilHomeState extends State<CivilHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Civil Engineering'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        child: Text('Civil Engineering'),
      ),
    );
  }
}
