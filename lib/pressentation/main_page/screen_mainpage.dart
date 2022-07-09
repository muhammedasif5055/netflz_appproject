import 'package:flutter/material.dart';
import 'package:netflz_appproject/core/colors/colors.dart';
import 'package:netflz_appproject/pressentation/downloads/widgets/screen_downloads.dart';
import 'package:netflz_appproject/pressentation/fast_laf/fast_lafe.dart';
import 'package:netflz_appproject/pressentation/home/homepage.dart';
import 'package:netflz_appproject/pressentation/main_page/widget/bottam_navbar.dart';
import 'package:netflz_appproject/pressentation/new_hot/new_hot.dart';
import 'package:netflz_appproject/pressentation/search/search.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({Key? key}) : super(key: key);
  final _pages =[
    ScreenHomePage(),
    ScreenNewHot(),
    ScreenFastLafe(),
    ScreenSearch(),
    ScreenDownlods()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChengeNotifire, builder: (context,dynamic index,_){
          return _pages[index];
        },),
      ),
        bottomNavigationBar: ScreenNavigationBar(),
    );
  }
}