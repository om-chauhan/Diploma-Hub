import 'package:flutter/material.dart';

class SubjectList extends StatefulWidget {
  const SubjectList({
    Key key,
    this.title,
    this.imagePath,
  }) : super(key: key);

  final List<String> title;
  final List<String> imagePath;

  @override
  _SubjectListState createState() => _SubjectListState();
}

class _SubjectListState extends State<SubjectList> {
  List<String> imagePath = [
    'assets/jee.png',
    'assets/neet.png',
    'assets/cbsc.png',
    'assets/ntse.png',
    'assets/nda.png',
    'assets/nda.png',
  ];
  List<String> title = [
    'Management',
    'Mobile Application Development',
    'Emerging Trends in Computer & Information Technology',
    'Wireless and Mobile Networks',
    'Network and Information Security',
    'Capstone Project Execution & Report Writing',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: title.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Subject()),
                  // );
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
