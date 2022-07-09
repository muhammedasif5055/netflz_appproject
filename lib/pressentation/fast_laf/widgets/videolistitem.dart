import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflz_appproject/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // soundmuteiconbotgtem
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.speaker_slash,
                      size: 30,
                      color: kwhitecolor,
                    ),
                  ),
                ),
                // meanuitemsright
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://www.themoviedb.org/t/p/w220_and_h330_face/odVv1sqVs0KxBXiA8bhIBlPgalx.jpg"),
                      ),
                    ),
                    VideoActionWidget(icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoActionWidget(icon: Icons.add, title: 'My List'),
                    VideoActionWidget(
                        icon: Icons.send_outlined, title: 'Share'),
                    VideoActionWidget(
                        icon: CupertinoIcons.play_fill, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: kwhitecolor,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: kwhitecolor,
            ),
          )
        ],
      ),
    );
  }
}
