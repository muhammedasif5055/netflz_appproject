import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/constance.dart';
import '../../home/widget/addinfo_btnwiget.dart';
import 'video_wigets.dart';

class EveryoneWachingwig extends StatelessWidget {
  final String posterpath;
  final String movieName;
  final String description;
  const EveryoneWachingwig({
    Key? key,
    required this.posterpath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        khight,
        Text(
          movieName,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        khight,
        Text(
            description,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.grey)),
        khight20,
        VideoWigets(
            bimage: posterpath 
            ),
        khight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Addinfowigets(
                icon: Icons.send_outlined,
                title: "Share",
                size: 29,
                fontSize: 15),
            kwidth,
            Addinfowigets(
                icon: CupertinoIcons.add,
                title: "My List",
                size: 29,
                fontSize: 15),
            kwidth,
            Addinfowigets(
                icon: CupertinoIcons.play_arrow_solid,
                title: "Play",
                size: 29,
                fontSize: 15),
            kwidth,
          ],
        )
      ],
    );
  }
}
