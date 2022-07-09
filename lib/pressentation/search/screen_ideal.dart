import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflz_appproject/core/colors/colors.dart';
import 'package:netflz_appproject/core/colors/constance.dart';

import 'widget/search_titlewiget.dart';

final imageurl =
    "https://www.themoviedb.org/t/p/w250_and_h141_face/aEGiJJP91HsKVTEPy1HhmN0wRLm.jpg";

class ScreenIdealWigets extends StatelessWidget {
  const ScreenIdealWigets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Searchtitlewidget(title: 'Top Searches'),
        khight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => const TopsearchItemtitle(),
              separatorBuilder: (ctx, index) => khight20,
              itemCount: 10),
        )
      ],
    );
  }
}



class TopsearchItemtitle extends StatelessWidget {
  const TopsearchItemtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreeWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: ScreeWidth * 0.35,
          height: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageurl),
              )),
        ),
        kwidth,
       const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(
            color: kwhitecolor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )
        ),

       const CircleAvatar(
          backgroundColor: kwhitecolor,
          radius: 25,
          child: CircleAvatar(backgroundColor: backgroundColor,
          radius: 23,
          child: Icon(CupertinoIcons.play_fill,color: kwhitecolor,),),
        )

     
      ],
    );
  }
}
