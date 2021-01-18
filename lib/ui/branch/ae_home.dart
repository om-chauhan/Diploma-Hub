import 'package:flutter/material.dart';

class AutoHome extends StatefulWidget {
  @override
  _AutoHomeState createState() => _AutoHomeState();
}

class _AutoHomeState extends State<AutoHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auto Engineering'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
          child: MaterialButton(
        color: Colors.green,
        child: Text(
          'WEB URL',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {
         
        },
      )),
    );
  }
}

// _launchURL() async {
//   const url = 'https://flutter.dev';
//   if (await canLaunch(url)) {
//     await launch(url, forceWebView: true);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
