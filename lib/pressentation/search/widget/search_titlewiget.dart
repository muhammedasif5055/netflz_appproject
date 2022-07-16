import 'package:flutter/material.dart';

class Searchtitlewidget extends StatelessWidget {
  const Searchtitlewidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
