import 'package:flutter/material.dart';
import '../../../core/colors/constants.dart';
import '../../widgets/button.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Text(
          "Tall Girl 2",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          "Landing the lead in the school musical is a dream come true for Jodi,until the pressure sends her confidence-- and ther relationship -into a tailspin.",
          overflow: TextOverflow.ellipsis,
          maxLines: 4,
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        Stack(
          children: [
            Image.network(
              'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/a4doyPOabvQor0RGkWdhVENAR3G.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            Positioned(
              bottom: 10,
              right: 5,
              child: CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.5),
                radius: 23,
                child: const Icon(Icons.volume_mute),
              ),
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            HomeButton(title: "Share", icon: Icons.send),
            KWidth,
            HomeButton(title: "My List", icon: Icons.add),
            KWidth,
            HomeButton(title: "Play", icon: Icons.play_arrow),
            KWidth
          ],
        )
      ],
    );
  }
}
