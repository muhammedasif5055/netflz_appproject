import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflz_appproject/core/colors/colors.dart';
import 'package:netflz_appproject/core/colors/constance.dart';
import 'package:netflz_appproject/pressentation/home/widget/addinfo_btnwiget.dart';
import 'package:netflz_appproject/pressentation/home/widget/backgroundcard.dart';
import 'package:netflz_appproject/pressentation/home/widget/number_cardwiget.dart';
import 'package:netflz_appproject/pressentation/home/widget/numberwiget.dart';
import 'package:netflz_appproject/pressentation/widgets/main_cardwigdjet.dart';
import 'package:netflz_appproject/pressentation/widgets/main_title.dart';

import '../widgets/title_cardwiget.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: const [
                    Backgroundcardwiger(),
                    Titlecard_wiget(title: 'Released in the past year'),
                    khight,
                    Titlecard_wiget(title: 'Trending Now'),
                    khight,
                    NumberWigectcard(),
                    khight,
                    Titlecard_wiget(title: 'Tense Dramas'),
                    khight,
                    Titlecard_wiget(title: 'South Indian Cinemas'),
                  ],
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                      duration: const Duration(microseconds: 1000),
                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(children: [
                          Row(
                            children: [
                              Image.network(
                                "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png",
                                width: 50,
                                height: 50,
                              ),
                             const Spacer(),
                              const Icon(
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
                          ),
                           khight,
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Tv Shows" ,style:kHometitle ,),
                            Text("Movies",style: kHometitle,),
                            Text("Categoriese",style: kHometitle),
                          ],)
                          
                        ]),
                      )
                    : khight,
              ],
            ),
          );
        },
      ),
    );
  }
}
