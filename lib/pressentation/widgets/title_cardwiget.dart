import 'package:flutter/material.dart';

import 'main_cardwigdjet.dart';
import 'main_title.dart';

class Titlecard_wiget extends StatelessWidget {
  const Titlecard_wiget({Key? key, required this.title, required this.posterList}) : super(key: key);
  final String title;
  final List<String>posterList;
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
              children: List.generate( 
                posterList.length,
                 (index) {
                  return MainCardWiget(imageUrl: posterList[index],);
                 }  ),
            ),
          )
        ],
      ),
    );
  }
}
