import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_db/core/strings.dart';

import '../../../application/search/search_bloc.dart';
import '../../../core/constant/constant.dart';
import 'title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SearchTitleWidget(title: 'Movies & TV'),
        kHeight10,
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1 / 1.4,
              children: List.generate(
                  state.searchResultData.length,
                  (index) => MainCard(
                        imageUrl:
                            state.searchResultData[index].posterPath ?? "",
                      )),
            );
          },
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl;
  const MainCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("$imageAppendUrl$imageUrl"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
