import 'package:flutter/material.dart';
import 'package:movie_db/core/constant/constant.dart';

import '../../widgets/main_title.dart';
import 'number_card_widget.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({super.key, required this.postersList});

  final List<String> postersList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: 'Top 10 Tv Shows In India Today'),
        kHeight10,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              postersList.length,
              (index) => NumberCard(
                index: index,
                imageUrl: postersList[index],
              ),
            ),
          ),
        )
      ],
    );
  }
}
