import 'package:diploma_hub/ui/about.dart';
import 'package:diploma_hub/ui/branch/ae_home.dart';
import 'package:diploma_hub/ui/branch/ce_home.dart';
import 'package:diploma_hub/ui/branch/co-home.dart';
import 'package:diploma_hub/ui/branch/ej_home.dart';
import 'package:diploma_hub/ui/branch/it_home.dart';
import 'package:diploma_hub/ui/branch/me.dart';
import 'package:diploma_hub/ui/help.dart';
import 'package:diploma_hub/ui/home.dart';
import 'package:diploma_hub/ui/paper/answer_paper.dart';
import 'package:diploma_hub/ui/paper/model_paper.dart';
import 'package:diploma_hub/ui/paper/question_paper.dart';
import 'package:diploma_hub/ui/request.dart';
import 'package:diploma_hub/ui/settings.dart';
import 'package:diploma_hub/ui/share_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/myApp': (BuildContext context) => MyApp(),
        '/home': (BuildContext context) => Home(),
        '/answerPaper': (BuildContext context) => AnswerPaper(),
        '/modelPaper': (BuildContext context) => ModelPaper(),
        '/questionPaper': (BuildContext context) => QuestionPaper(),
        '/shareApp': (BuildContext context) => ShareApp(),
        '/settings': (BuildContext context) => Settings(),
        '/request': (BuildContext context) => Request(),
        '/about': (BuildContext context) => About(),
        '/help': (BuildContext context) => Help(),
        '/me': (BuildContext context) => MechanicalHome(),
        '/ae': (BuildContext context) => AutoHome(),
        '/ce': (BuildContext context) => CivilHome(),
        '/it': (BuildContext context) => InformationHome(),
        '/co': (BuildContext context) => ComputerHome(),
        '/ej': (BuildContext context) => ElectronicsHome(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Diploma Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
