import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflz_appproject/core/colors/constance.dart';
import 'package:netflz_appproject/pressentation/search/screen_ideal.dart';
import 'package:netflz_appproject/pressentation/search/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(child: Padding(
       padding: const EdgeInsets.all(10.0),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: Icon(CupertinoIcons.search,color: Colors.grey,),
              suffixIcon: Icon(CupertinoIcons.xmark_circle_fill,color: Colors.grey,),
              style: TextStyle(color: Colors.white),
            ),
            khight,
            // Expanded(child: const ScreenIdealWigets()),
            Expanded(child: const ScreenSearchResul()),
          ],
        ),
     )),
    );
  }
}