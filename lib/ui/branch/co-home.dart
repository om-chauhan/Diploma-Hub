import 'package:flutter/material.dart';

class ComputerHome extends StatefulWidget {
  @override
  _ComputerHomeState createState() => _ComputerHomeState();
}

class _ComputerHomeState extends State<ComputerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Computer Engineering'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        child: Text('Computer Engineering'),
      ),
    );
  }
}
