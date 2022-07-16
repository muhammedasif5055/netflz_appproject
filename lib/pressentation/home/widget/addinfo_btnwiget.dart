import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class Addinfowigets extends StatelessWidget {
  const Addinfowigets({
    Key? key,
    required this.icon,
    required this.title,
    required this.size,
    required this.fontSize,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final double size;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhitecolor,
          size: size,
        ),
        Text(
          title,
          style: TextStyle(fontSize: fontSize),
        )
      ],
    );
  }
}
