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
          "Aadu",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        khight,
        Text(
            "Triumph in a local Tug-of-war tourney gifted Shaji Pappan and his gang, a cute but naughty little goat 'Pinky'. Their attempts to dump the goat, unknowingly, interrupts few groups of smugglers, who are in race for the 'Neelakodiveli.",
            style: TextStyle(color: Colors.grey)),
        khight20,
        VideoWigets(
            bimage:
                "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/3DmJz4dQbuInK9svJnSzOG7fM9e.jpg"),
        khight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
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
