import 'package:flutter/material.dart';

class AnswerPaper extends StatefulWidget {
  @override
  _AnswerPaperState createState() => _AnswerPaperState();
}

class _AnswerPaperState extends State<AnswerPaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text('Answer Paper'),
        ),
      ),
    );
  }
}
