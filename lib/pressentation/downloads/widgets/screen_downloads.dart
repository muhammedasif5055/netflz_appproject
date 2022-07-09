import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflz_appproject/core/colors/colors.dart';
import 'package:netflz_appproject/core/colors/constance.dart';
import 'package:netflz_appproject/pressentation/widgets/app_barwidget.dart';

class ScreenDownlods extends StatelessWidget {
  ScreenDownlods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _wigetlist = [
      const _SmartDownlods(),
      Section2(),
      const Section3(),
    ];
    return Scaffold(
        appBar: PreferredSize(
            child: AppBarWidget(
              title: 'Downlods',
            ),
            preferredSize: Size.fromHeight(50)),
        body: ListView.separated(
          padding: EdgeInsets.all(15),
            itemBuilder: (ctx, index) => _wigetlist[index] ,
            separatorBuilder: (ctx ,index)=> SizedBox(height: 20,) ,
            itemCount: _wigetlist.length));
  }
}

class _SmartDownlods extends StatelessWidget {
  const _SmartDownlods({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kwidth,
        Icon(
          Icons.settings,
          color: kwhitecolor,
        ),
        kwidth,
        Text("Smart Downloads")
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  final List imagelist = [
    "https://www.themoviedb.org/t/p/w220_and_h330_face/sKCr78MXSLixwmZ8DyJLrpMsd15.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/odVv1sqVs0KxBXiA8bhIBlPgalx.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/kTzfTJ2YZLNloOsE3PserEFCcg5.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads For You',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kwhitecolor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        khight,
        const Text(
          "We'll download a personalized selection of\n movies and shows for you, so there's\n always something to watch on your\n phone.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        khight,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.38,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
              DownlodsImageWidget(
                imagelist: imagelist[0],
                size: Size(
                  size.width * 0.4,
                  size.width * 0.5,
                ),
                margin: EdgeInsets.only(left: 150, bottom: 30),
                angle: 20,
              ),
              DownlodsImageWidget(
                imagelist: imagelist[1],
                size: Size(
                  size.width * 0.4,
                  size.width * 0.5,
                ),
                margin: EdgeInsets.only(right: 150, bottom: 30),
                angle: -20,
              ),
              DownlodsImageWidget(
                  imagelist: imagelist[2],
                  size: Size(
                    size.width * 0.4,
                    size.width * 0.6,
                  ),
                  margin: EdgeInsets.only(top: 15))
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: kbtncolorblue,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: kwhitecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        khight,
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: kbtncolorwhite,
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: kcolorblack,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class DownlodsImageWidget extends StatelessWidget {
  const DownlodsImageWidget({
    Key? key,
    required this.imagelist,
    required this.margin,
    this.angle = 0,
    required this.size,
  }) : super(key: key);

  final String imagelist;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: ClipRRect(
        child: Container(
          margin: margin,
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imagelist))),
        ),
      ),
    );
  }
}
