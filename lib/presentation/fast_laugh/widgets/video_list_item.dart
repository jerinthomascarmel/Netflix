import 'package:flutter/material.dart';
import 'package:netflix/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix/core/Strings.dart';
import 'package:netflix/presentation/fast_laugh/screen_first_laugh.dart';
import 'package:share_plus/share_plus.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  final String imageUrl;
  const VideoListItem({super.key, required this.index, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Container(
        //   color: Colors.accents[index % Colors.accents.length],
        // ),
        FastLaughVideoPlayer(
            videoUrl: videoList[index % videoList.length],
            onStateChanged: (bool) {}),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  radius: 30,
                  child: const Icon(Icons.volume_mute),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage('$downloadsImageBaseUrl$imageUrl'),
                      ),
                    ),
                    VideoActionWidget(icon: Icons.emoji_emotions, title: 'LOL'),
                    const VideoActionWidget(icon: Icons.add, title: 'My List'),
                    GestureDetector(
                        onTap: () {
                          print(this.imageUrl);
                          print("cliked");
                          Share.share(imageUrl);
                        },
                        child: const VideoActionWidget(
                            icon: Icons.share, title: 'Share')),
                    const VideoActionWidget(
                        icon: Icons.play_arrow, title: 'My List'),
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
  const VideoActionWidget({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
