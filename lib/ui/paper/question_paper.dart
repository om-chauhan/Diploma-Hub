import 'package:flutter/material.dart';

class QuestionPaper extends StatefulWidget {
  @override
  _QuestionPaperState createState() => _QuestionPaperState();
}

class _QuestionPaperState extends State<QuestionPaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text('Question Paper'),
        ),
      ),
    );
  }
}
