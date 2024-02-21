import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../search/widgets/search_idle.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
          child: Text(index.toString()),
        ),
        Align(
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //left side
              CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off,
                        color: kWhiteColor,
                        size: 30,
                      ))),
              //right side

              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(imageuUrl),
                    ),
                  ),
                  VideoActionsWidget(icon: Icons.emoji_emotions, title: 'LOL'),
                  VideoActionsWidget(icon: Icons.add, title: 'My List'),
                  VideoActionsWidget(icon: Icons.share, title: 'Share'),
                  VideoActionsWidget(icon: Icons.play_arrow, title: 'Play'),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidget(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: <Widget>[
          Icon(icon, color: kWhiteColor, size: 30),
          Text(
            title,
            style: const TextStyle(color: kWhiteColor, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
