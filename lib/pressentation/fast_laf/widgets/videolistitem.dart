import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflz_appproject/application/fastlafe/fast_lafe_bloc.dart';
import 'package:netflz_appproject/core/colors/colors.dart';
import 'package:netflz_appproject/domin/downlods/modeal/downlods.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

import '../../../core/colors/constance.dart';

class VideoListItemInheritedwidet extends InheritedWidget {
  final Widget wdget;
  final Downloads movieData;

  const VideoListItemInheritedwidet({
    Key? key,
    required this.wdget,
    required this.movieData,
  }) : super(key: key, child: wdget);

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedwidet oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedwidet? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedwidet>();
  }
}

class VideoListItem extends StatelessWidget {
  const VideoListItem({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    final posterPathlink =
        VideoListItemInheritedwidet.of(context)?.movieData.posterPath;
    final videoUrl = dummyvideoUrls[index % dummyvideoUrls.length];
    return Stack(
      children: [
        FastLafvideoplayer(videourl: videoUrl, onStateCanged: (bool) {}),
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
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: posterPathlink == null
                            ? null
                            : NetworkImage('$imageAppendUrl$posterPathlink'),
                      ),
                    ),
                    ValueListenableBuilder(
                        valueListenable: likedVideosIdsNotifer,
                        builder: (BuildContext c, Set<int> newLinkedListIds,
                            Widget? _) {
                          final _index = index;
                          if (newLinkedListIds.contains(_index)) {
                            return GestureDetector(
                              onTap: () {
                                likedVideosIdsNotifer.value.remove(_index);
                                likedVideosIdsNotifer.notifyListeners();
                              },
                              child: const VideoActionWidget(
                                icon: Icons.favorite_outline,
                                title: 'Liked',
                              ),
                            );
                          }
                          return GestureDetector(
                            onTap: () {
                              likedVideosIdsNotifer.value.add(_index);
                              likedVideosIdsNotifer.notifyListeners();
                            },
                            child: const VideoActionWidget(
                              icon: Icons.emoji_emotions,
                              title: 'LOL',
                            ),
                          );
                        }),
                    VideoActionWidget(icon: Icons.add, title: 'My List'),
                    GestureDetector(
                      onTap: () {
                        final movieName =
                            VideoListItemInheritedwidet.of(context)
                                ?.movieData
                                .posterPath;
                        if (movieName != null) {
                          Share.share(movieName);
                        }
                      },
                      child: VideoActionWidget(
                          icon: Icons.send_outlined, title: 'Share'),
                    ),
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

class FastLafvideoplayer extends StatefulWidget {
  final String videourl;
  final void Function(bool isPlaying) onStateCanged;
  FastLafvideoplayer({
    Key? key,
    required this.videourl,
    required this.onStateCanged,
  }) : super(key: key);

  @override
  State<FastLafvideoplayer> createState() => _FastLafvideoplayerState();
}

class _FastLafvideoplayerState extends State<FastLafvideoplayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videourl);
    _videoPlayerController.initialize().then((value) {
      setState(() {});
      _videoPlayerController.play();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: _videoPlayerController.value.isInitialized
            ? AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              )
            : const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ));
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
