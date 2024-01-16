import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';

const netflixIcon =
    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/netflix-icon-template-design-0aef224f2adf2a82dc4c2520f7a29827_screen.jpg?ts=1587149822";
const imageUrl =
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/NNxYkU70HPurnNCSiCjYAmacwm.jpg";

class ScrollingScreenCard extends StatelessWidget {
  final String title;
  const ScrollingScreenCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const MainCard(),
              separatorBuilder: (context, index) => KWidth,
              itemCount: 10),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      decoration: BoxDecoration(
        color: Colors.red,
        image: const DecorationImage(
            image: NetworkImage(imageUrl), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Row(
          children: [
            SizedBox(
              width: 25,
            ),
            MainCard()
          ],
        ),
        Positioned(
            left: -15,
            bottom: -20,
            child: Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  '${index + 1}',
                  style: TextStyle(
                    fontSize: 150,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.white,
                  ),
                ),
                // Solid text as fill.
                Text(
                  '${index + 1}',
                  style: const TextStyle(
                    fontSize: 150,
                    color: Colors.black,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}

class ScrollingNumberCard extends StatelessWidget {
  final String title;
  const ScrollingNumberCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => NumberCard(index: index),
              separatorBuilder: (context, index) => KWidth,
              itemCount: 10),
        )
      ],
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextButton.icon(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.white)),
          label: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Text(
              "Play",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          onPressed: () {},
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.black,
          )),
    );
  }
}

class NavigatorBar extends StatelessWidget {
  const NavigatorBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.network(
                  netflixIcon,
                  width: 100,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.cast,
                color: Colors.white,
              ),
              KWidth,
              Container(
                height: 30,
                width: 30,
                color: Colors.blue,
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("TV Shows"),
              Text("Movies"),
              Text("Categories"),
            ],
          ),
          kHeight
        ],
      ),
    );
  }
}
