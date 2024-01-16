import 'package:flutter/material.dart';

import '../../../core/colors/constants.dart';
import '../../widgets/button.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 350,
      child: Row(children: [
        const SizedBox(
          height: 350,
          width: 60,
          child: Column(children: [
            Text(
              "FEB",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
            ),
            Text('11',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50))
          ]),
        ),
        SizedBox(
          height: 350,
          width: size.width - 60,
          // color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width - 60,
                height: 200,
                child: Stack(
                  children: [
                    Image.network(
                      'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/a4doyPOabvQor0RGkWdhVENAR3G.jpg',
                      fit: BoxFit.cover,
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
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TALL GIRL 2",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0),
                  ),
                  HomeButton(title: "Remind me", icon: Icons.notifications),
                  HomeButton(title: "Info", icon: Icons.info)
                ],
              ),
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
              )
            ],
          ),
        )
      ]),
    );
  }
}
