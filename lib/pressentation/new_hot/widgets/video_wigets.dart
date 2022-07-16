import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class VideoWigets extends StatelessWidget {
  const VideoWigets({Key? key, required this.bimage}) : super(key: key);
  final String bimage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            bimage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 5,
          bottom: 5,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black.withOpacity(0.5),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.speaker_slash,
                size: 18,
                color: kwhitecolor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
