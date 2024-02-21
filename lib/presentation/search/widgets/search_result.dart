import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/constant/constant.dart';
import 'search_idle.dart';
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
        Expanded(
            child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1 / 1.4,
          children: List.generate(20, (index) => const MainCard()),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(imageuUrl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
