import 'package:flutter/material.dart';

import '../../widgets/main_title.dart';
import 'number_cardwiget.dart';

class NumberWigectcard extends StatelessWidget {
  const NumberWigectcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
      crossAxisAlignment:CrossAxisAlignment.start,
        children: [
        MaintitleWiget(title:"Top 10 Tv Shows India Today" ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) =>  NumberCardWiget(index: index+1)),
          ),
        )


       
      ],),
    );
  }
}

