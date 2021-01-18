import 'package:flutter/material.dart';

class ElectronicsHome extends StatefulWidget {
  @override
  _ElectronicsHomeState createState() => _ElectronicsHomeState();
}

class _ElectronicsHomeState extends State<ElectronicsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Electronics & telecommunication'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        child: Text('Electronics & Telecommunication'),
      ),
    );
  }
}
