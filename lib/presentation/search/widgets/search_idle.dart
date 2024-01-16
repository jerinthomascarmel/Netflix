import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/Strings.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

// const imageUrl = 'https://m.media-amazon.com/images/I/51gnZ+vYfDL.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const searchTitle(title: 'Top Searches'),
          kHeight,
          Expanded(
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state.isError) {
                  return const Center(
                    child: Text("Sorry Data can't be fetched"),
                  );
                } else {
                  return ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => TopSearchItemTile(
                            imageURL:
                                '$downloadsImageBaseUrl${state.idleList[index].posterPath}',
                            title: state.idleList[index].title ?? 'No Title',
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 15,
                          ),
                      itemCount: state.idleList.length);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String imageURL;
  final String title;
  const TopSearchItemTile(
      {super.key, required this.imageURL, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: 75,
          width: screenWidth * 0.35,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imageURL), fit: BoxFit.cover),
          ),
        ),
        Expanded(
            child: Text(
          textAlign: TextAlign.center,
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        )),
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 27,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 25,
            child: Icon(
              CupertinoIcons.play_fill,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
