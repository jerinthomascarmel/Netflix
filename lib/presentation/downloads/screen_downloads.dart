// import 'package:cached_network_image/cached_network_image.dart';
import 'dart:math';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart%20%20';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/core/Strings.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(title: "Downloads"),
        ),
        body: ListView(
          children: [
            kHeight,
            const Row(
              children: [
                KWidth,
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                KWidth,
                Text("Smart Downloads")
              ],
            ),
            kHeight,
            const Text(
              "Introducing Downloads for you",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            kHeight,
            const Text(
              textAlign: TextAlign.center,
              "We will download a personalized selection of \n movies for you ,so there is \n always something to watch on your\n devices",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            kHeight,
            BlocBuilder<DownloadsBloc, DownloadsState>(
              builder: (context, state) {
                return SizedBox(
                  width: size.width * 0.8,
                  height: size.width * 0.8,
                  child: (state.isLoading)
                      ? const Center(child: CircularProgressIndicator())
                      // ignore: unrelated_type_equality_checks
                      : ((state.failureOrSuccessOption ==
                                  const Some(
                                      Left(MainFailure.clientFailure()))) ||
                              // ignore: unrelated_type_equality_checks
                              (state.failureOrSuccessOption ==
                                  const Some(
                                      Left(MainFailure.serverFailure()))))
                          ? const Center(
                              child: Text("image can't fetched"),
                            )
                          : Stack(
                              alignment: Alignment.center,
                              children: [
                                CircleAvatar(
                                  radius: size.width * 0.35,
                                  backgroundColor: Colors.grey.withOpacity(0.5),
                                ),
                                DownloadImageWidget(
                                  imageUrl:
                                      "$downloadsImageBaseUrl${state.downloads?[13].posterPath}",
                                  angle: -15 * pi / 180,
                                  height: size.width * 0.6,
                                  width: size.width * 0.4,
                                  m: const EdgeInsets.only(right: 150),
                                ),
                                DownloadImageWidget(
                                  imageUrl:
                                      "$downloadsImageBaseUrl${state.downloads?[17].posterPath}",
                                  angle: 15 * pi / 180,
                                  height: size.width * 0.6,
                                  width: size.width * 0.4,
                                  m: const EdgeInsets.only(left: 150),
                                ),
                                DownloadImageWidget(
                                  imageUrl:
                                      "$downloadsImageBaseUrl${state.downloads?[18].posterPath}",
                                  angle: 0 * pi / 180,
                                  height: size.width * 0.6,
                                  width: size.width * 0.5,
                                  m: const EdgeInsets.only(top: 0),
                                )
                              ],
                            ),
                );
              },
            ),
            MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Set up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "See what you can dowload",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget(
      {super.key,
      required this.imageUrl,
      required this.angle,
      required this.height,
      required this.width,
      required this.m});

  final String imageUrl;
  final double angle;
  final double height;
  final double width;
  final EdgeInsets m;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        height: height,
        width: width,
        margin: m,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageUrl,
              ),
            )),
      ),
    );
  }
}
