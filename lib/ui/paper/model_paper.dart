import 'package:diploma_hub/data/subject_list.dart';
import 'package:flutter/material.dart';

class ModelPaper extends StatefulWidget {
  @override
  _ModelPaperState createState() => _ModelPaperState();
}

//To open link in webView

class _ModelPaperState extends State<ModelPaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          sortAscending: true,
          sortColumnIndex: 0,
          columns: [
            DataColumn(
              tooltip: 'Subject Name',
              label: Text('Subject'),
            ),
            DataColumn(
              tooltip: 'Subject Code',
              label: Text('Code'),
            ),
            DataColumn(
              tooltip: 'Donload Link',
              label: Text('URL'),
            ),
          ],
          rows: subjects
              .map(
                (subject) => DataRow(
                  cells: [
                    DataCell(
                      Text(subject.name),
                    ),
                    DataCell(
                      Text(subject.code),
                    ),
                    DataCell(
                      Text(subject.pdfURL),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
