import 'package:diploma_hub/widgets/branch_item.dart';
import 'package:diploma_hub/widgets/category_text.dart';
import 'package:diploma_hub/widgets/drawer_nav.dart';
import 'package:diploma_hub/widgets/header.dart';
import 'package:diploma_hub/widgets/top_subject.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNav(),
      backgroundColor: Color(0xfff8fbfc),
      body: ListView(
        physics: ScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Header(),
              SizedBox(height: 20.0),
              CategoryText(
                title: 'Shortcuts',
                color: Colors.blue,
                size: 20.0,
              ),
              TopSubject(),
              SizedBox(height: 10.0),
              CategoryText(
                title: 'Branchs',
                color: Colors.blue,
                size: 20.0,
              ),
              BranchItem(),
            ],
          ),
        ],
      ),
    );
  }
}
