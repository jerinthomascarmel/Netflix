import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/home/widgets/screen_card.dart';

import '../widgets/button.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/voHUmluYmKyleFkTu3lOXQG702u.jpg";

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            const NavigatorBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 420,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(imageUrl), fit: BoxFit.fill)),
                      width: double.infinity,
                    ),
                    kHeight,
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HomeButton(title: "My List", icon: Icons.add),
                        PlayButton(),
                        HomeButton(title: "Info", icon: Icons.info),
                      ],
                    ),
                    const ScrollingScreenCard(
                        title: "Released in the Past Year"),
                    const ScrollingScreenCard(title: "Trending Now"),
                    const ScrollingNumberCard(
                        title: "Top 10 TV Shows in India"),
                    const ScrollingScreenCard(title: "South Indian Cinema"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
