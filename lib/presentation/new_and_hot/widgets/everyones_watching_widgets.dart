import 'package:flutter/material.dart';
import 'package:movie_db/core/constant/constant.dart';

import '../../../core/colors/colors.dart';
import '../../home/widgets/custom_button_widget.dart';
import 'video_widgets.dart';

class EveryOnesWatchingWidgets extends StatelessWidget {
  const EveryOnesWatchingWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight10,
        Text('Friends'),
        kHeight10,
        Text(
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic",
          style: TextStyle(color: kGreyColor),
        ),
        SizedBox(
          height: 50,
        ),
        VideoWidget(),
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonWidget(
              icon: Icons.share,
              title: 'Share',
              iconSize: 25,
              textSize: 16,
            ),
            kHeight10,
            CustomButtonWidget(
              icon: Icons.add,
              title: 'My List',
              iconSize: 25,
              textSize: 16,
            ),
            kHeight10,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: 'Play',
              iconSize: 25,
              textSize: 16,
            ),
          ],
        )
      ],
    );
  }
}
