import 'package:flutter/material.dart';
import 'package:netflz_appproject/core/colors/constance.dart';
import 'package:netflz_appproject/pressentation/search/widget/search_titlewiget.dart';
final searchimgurl =  "https://www.themoviedb.org/t/p/w220_and_h330_face/sKCr78MXSLixwmZ8DyJLrpMsd15.jpg";
class ScreenSearchResul extends StatelessWidget {
  const ScreenSearchResul({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Searchtitlewidget(title: 'Movies & TV'),
        khight,
        Expanded(
            child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1.2/1.5,
            children: List.generate(20, (index) {
              return const MainCard();
            }),
        ))
      ],
    );
  }
}

class MainCard  extends StatelessWidget {
  const MainCard ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(image: NetworkImage(searchimgurl),
      fit: BoxFit.cover)),
    );
  }
}

