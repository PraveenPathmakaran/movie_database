import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../core/colors/colors.dart';
import '../../core/constant/constant.dart';
import '../widgets/main_title_card_widget.dart';
import 'widgets/background_card.dart';
import 'widgets/number_title_card_widget.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, value, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;

            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              //listview
              ListView(
                children: const [
                  BackgroundCard(
                      backgroundImage:
                          'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vtfsNxAsDHElFvYHUc9Khwqg17Y.jpg'),
                  kHeight10,
                  MainTitleCard(
                    title: 'Trending Now',
                    posterList: [],
                  ),
                  kHeight10,
                  NumberTitleCard(postersList: []),
                  MainTitleCard(
                    title: 'Tense Dramas',
                    posterList: [],
                  ),
                  kHeight10,
                  MainTitleCard(
                    title: 'South Indian Cinemas',
                    posterList: [],
                  ),
                ],
              ),

              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
                      child: Container(
                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  "https://cdn-images-1.medium.com/max/1200/1*ty4NvNrGg4ReETxqU2N3Og.png",
                                  width: 60,
                                  height: 60,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                kWidth10,
                                Image.network(
                                  "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png",
                                  width: 25,
                                  height: 25,
                                ),
                                kWidth10
                              ],
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'TV Shows',
                                    style: kHomeTitleText,
                                  ),
                                  const Text(
                                    'Movies',
                                    style: kHomeTitleText,
                                  ),
                                  TextButton(
                                    child: const Row(
                                      children: [
                                        Text(
                                          'Categories',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          color: kWhiteColor,
                                        )
                                      ],
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : kHeight10,
            ],
          ),
        );
      },
    ));
  }
}
