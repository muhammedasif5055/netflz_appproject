import 'package:flutter/material.dart';

import 'main_cardwigdjet.dart';
import 'main_title.dart';

class Titlecard_wiget extends StatelessWidget {
  const Titlecard_wiget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MaintitleWiget(title: title),
          LimitedBox(
            maxHeight: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) => const MainCardWiget()),
            ),
          )
        ],
      ),
    );
  }
}
