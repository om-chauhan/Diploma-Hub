import 'package:flutter/material.dart';

class MechanicalHome extends StatefulWidget {
  @override
  _MechanicalHomeState createState() => _MechanicalHomeState();
}

class _MechanicalHomeState extends State<MechanicalHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mechanical Engineering'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        child: Text('Mechanical Engineering'),
      ),
    );
  }
}
