import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflz_appproject/core/colors/colors.dart';
import 'package:netflz_appproject/pressentation/home/widget/addinfo_btnwiget.dart';

import '../../core/colors/constance.dart';
import '../widgets/app_barwidget.dart';
import 'widgets/comming_soon.dart';
import 'widgets/evryone_waching.dart';
import 'widgets/video_wigets.dart';

class ScreenNewHot extends StatelessWidget {
  const ScreenNewHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            title: const Text(
              "New & Hot",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            actions: [
              Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
              ),
              kwidth,
              Container(
                width: 25,
                height: 25,
                color: Colors.blue,
              ),
              kwidth,
            ],
            bottom: TabBar(
                labelColor: kcolorblack,
                unselectedLabelColor: kwhitecolor,
                isScrollable: true,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator: BoxDecoration(
                    color: kwhitecolor,
                    borderRadius: BorderRadius.circular(20)),
                tabs: [
                  Tab(
                    text: "🍿 Coming Soon",
                  ),
                  Tab(
                    text: "👀 Everyone's waching",
                  )
                ]),
          ),
        ),
        body: TabBarView(children: [
          _buildComingSoon(),
          _buildEveryOnesWatching(),
        ]),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) => ComingsoonWiget(),
    );
  }

  _buildEveryOnesWatching() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.separated(
          itemBuilder: (ctx,index)=>EveryoneWachingwig(),
          separatorBuilder: (ctx,index)=>SizedBox(),
          itemCount: 10),
    );
  }
}

