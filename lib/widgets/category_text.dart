import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  final String title;
  final double size;
  final Color color;
  const CategoryText({Key key, this.title, this.size, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
            fontSize: size,
            color: color,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
