import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/news_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentation/news_and_hot/widgets/everyone_watching_widget.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenNewsAndHot extends StatelessWidget {
  const ScreenNewsAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const AppBarWidget(
            title: "New & Hot",
          ),
          bottom: TabBar(
              isScrollable: true,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              indicatorWeight: 0,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              indicator: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(45)),
              tabs: const [
                Tab(
                  text: "🍿 Coming Soon",
                ),
                Tab(
                  text: "👀 Everyone's Watching",
                ),
              ]),
        ),
        body: TabBarView(children: [
          buildComingSoon(),
          buildEveryoneWatching(),
        ]),
      ),
    );
  }

  Widget buildComingSoon() {
    return ListView.separated(
        itemBuilder: (context, index) => const ComingSoonWidget(),
        separatorBuilder: (context, index) => const SizedBox(),
        itemCount: 10);
  }

  Widget buildEveryoneWatching() {
    return ListView.separated(
        itemBuilder: (context, index) {
          return const EveryonesWatchingWidget();
        },
        separatorBuilder: (context, index) => kHeight,
        itemCount: 10);
  }
}
