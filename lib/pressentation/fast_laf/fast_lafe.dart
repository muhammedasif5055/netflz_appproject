import 'package:flutter/material.dart';
import 'package:netflz_appproject/pressentation/fast_laf/widgets/videolistitem.dart';

class ScreenFastLafe extends StatelessWidget {
  const ScreenFastLafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index){
        return VideoListItem(index: index);
      }),)));
  }
}