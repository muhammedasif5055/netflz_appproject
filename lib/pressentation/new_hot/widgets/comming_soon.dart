import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflz_appproject/pressentation/new_hot/widgets/video_wigets.dart';

import '../../../core/colors/colors.dart';
import '../../../core/colors/constance.dart';
import '../../home/widget/addinfo_btnwiget.dart';

class ComingsoonWiget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterpath;
  final String movieName;
  final String description;

  const ComingsoonWiget({
    Key? key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterpath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        khight20,
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                month,
                style: const TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 100, 99, 99)),
              ),
              Text(
                day,
                style: const TextStyle(
                  letterSpacing: 5,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            VideoWigets(bimage: posterpath),
            khight,
            Row(
              children: [
                Expanded(
                  child: Text(
                    movieName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Row(
                  children: const [
                    Addinfowigets(
                        icon: CupertinoIcons.bell,
                        title: "Remind Me",
                        size: 20,
                        fontSize: 10),
                    kwidth,
                    Addinfowigets(
                        icon: Icons.info_outline_rounded,
                        title: "Info",
                        size: 20,
                        fontSize: 10),
                    kwidth,
                  ],
                ),
              ],
            ),
            Text("Coming on $day $month"),
            khight20,
            Text(
              movieName,
              style: TextStyle(fontSize: 14,
              letterSpacing: -2,
               fontWeight: FontWeight.bold),
            ),
            khight,
            Text(description,
            maxLines: 4,
             style: TextStyle(color: Colors.grey),)
          ]),
        )
      ],
    );
  }
}
