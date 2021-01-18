import 'package:diploma_hub/ui/paper/answer_paper.dart';
import 'package:diploma_hub/ui/paper/model_paper.dart';
import 'package:diploma_hub/ui/paper/question_paper.dart';
import 'package:flutter/material.dart';

class TopSubject extends StatefulWidget {
  @override
  _TopSubjectState createState() => _TopSubjectState();
}

class _TopSubjectState extends State<TopSubject> {
  List<String> topsubjectTitle = [
    "Model",
    "Question",
    "Answer",
  ];
  List<dynamic> topsubjectLinks = [
    ModelPaper(),
    QuestionPaper(),
    AnswerPaper(),
  ];
  List<String> topsubjectImage = [
    'assets/nda.png',
    'assets/nda.png',
    'assets/nda.png',
  ];
  List<Color> leftColor = <Color>[
    Color(0xff28c1fd),
    Color(0xfff2838c),
    Color(0xfff3b666),
  ];
  List<Color> rightColor = <Color>[
    Color(0xff5fd8fd),
    Color(0xfff89988),
    Color(0xfffbd141),
  ];

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      height: 150.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: topsubjectTitle.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    if (topsubjectLinks[index] == topsubjectLinks[0]) {
                      return Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ModelPaper()),
                      );
                    } else if (topsubjectLinks[index] == topsubjectLinks[1]) {
                      return Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuestionPaper()),
                      );
                    } else {
                      return Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnswerPaper()),
                      );
                    }
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 110.0,
                        width: MediaQuery.of(context).size.width * 0.44,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              leftColor[index],
                              rightColor[index],
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                                image: AssetImage(topsubjectImage[index]),
                                height: 60.0,
                                width: 60.0),
                            Text(
                              topsubjectTitle[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
