import 'package:flutter/material.dart';

class InformationHome extends StatefulWidget {
  @override
  _InformationHomeState createState() => _InformationHomeState();
}

class _InformationHomeState extends State<InformationHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information Technology'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        child: Text('Information Technology'),
      ),
    );
  }
}
