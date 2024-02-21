import 'package:flutter/material.dart';

import 'widget/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index) => VideoListItem(index: index)),
      ),
    );
  }
}
