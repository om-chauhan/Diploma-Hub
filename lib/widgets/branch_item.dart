import 'package:diploma_hub/ui/branch/ae_home.dart';
import 'package:diploma_hub/ui/branch/ce_home.dart';
import 'package:diploma_hub/ui/branch/co-home.dart';
import 'package:diploma_hub/ui/branch/ej_home.dart';
import 'package:diploma_hub/ui/branch/it_home.dart';
import 'package:diploma_hub/ui/branch/me.dart';

import 'package:flutter/material.dart';

class BranchItem extends StatefulWidget {
  @override
  _BranchItemState createState() => _BranchItemState();
}

class _BranchItemState extends State<BranchItem> {
  List<String> imagePath = [
    'assets/jee.png',
    'assets/neet.png',
    'assets/cbsc.png',
    'assets/ntse.png',
    'assets/nda.png',
    'assets/nda.png',
  ];
  List<String> title = [
    'Auto Engineering',
    'Computer Science',
    'Civil Engineering',
    'Elctronics & Telecommunication',
    'Information Techcology',
    'Mechanical Engineering',
  ];
  List<String> subtitle = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
  ];
  List<dynamic> branchPages = [
    AutoHome(),
    ComputerHome(),
    CivilHome(),
    ElectronicsHome(),
    InformationHome(),
    MechanicalHome(),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: title.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              if (branchPages[index] == branchPages[0]) {
                return Navigator.pushNamed(context, '/ae');
              } else if (branchPages[index] == branchPages[1]) {
                return Navigator.pushNamed(context, '/co');
              } else if (branchPages[index] == branchPages[2]) {
                return Navigator.pushNamed(context, '/ce');
              } else if (branchPages[index] == branchPages[3]) {
                return Navigator.pushNamed(context, '/ej');
              } else if (branchPages[index] == branchPages[4]) {
                return Navigator.pushNamed(context, '/it');
              } else {
                return Navigator.pushNamed(context, '/me');
              }
            },
            child: Container(
              alignment: Alignment.center,
              padding: new EdgeInsets.all(5.0),
              height: 90.0,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                color: Color(0xfffeffff),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffe2eaf1),
                    blurRadius: 10.0,
                    offset: Offset(-20.0, 10.0),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Image(
                    image: AssetImage(imagePath[index]),
                    height: 50.0,
                    width: 50.0,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title[index],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          subtitle[index],
                          style: TextStyle(
                            color: Color(0xffdcddde),
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.start,
                          softWrap: true,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
