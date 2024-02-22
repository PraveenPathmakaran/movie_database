import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_db/core/strings.dart';

import '../../../application/search/search_bloc.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constant/constant.dart';
import 'title.dart';

const imageuUrl =
    "https://images.pexels.com/photos/757889/pexels-photo-757889.jpeg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SearchTitleWidget(title: 'Top Search'),
        kHeight10,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Error while getting data'),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text('Empty Data'),
                );
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => TopSearchItemTile(
                        imageUrl:
                            "$imageAppendUrl${state.idleList[index].posterPath ?? ""}",
                        title: state.idleList[index].title ?? "No title found",
                      ),
                  separatorBuilder: (context, index) => kHeight20,
                  itemCount: state.idleList.length);
            },
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String imageUrl;
  final String title;

  const TopSearchItemTile(
      {super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: <Widget>[
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          )),
        ),
        kWidth10,
        Expanded(
            child: Text(
          title,
          style: const TextStyle(
            color: kWhiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )),
        const CircleAvatar(
          backgroundColor: kWhiteColor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBlackColor,
            radius: 23,
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                CupertinoIcons.play_fill,
                color: kWhiteColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
