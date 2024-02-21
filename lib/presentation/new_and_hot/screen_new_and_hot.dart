import 'package:flutter/material.dart';
import 'package:movie_db/core/colors/colors.dart';
import 'package:movie_db/core/constant/constant.dart';

import 'widgets/coming_soon_widget.dart';
import 'widgets/everyones_watching_widgets.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: kWhiteColor),
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
              ),
              kWidth10,
              Container(
                color: Colors.blue,
                width: 30,
                height: 30,
              ),
              kWidth10
            ],
            bottom: const TabBar(
                labelColor: kWhiteColor,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: 'Coming Soon',
                  ),
                  Tab(
                    text: "everyone's watching",
                  ),
                ]),
          ),
        ),
        body: TabBarView(
          children: [_buildComingSoon(context), _buildEveryonesWatching()],
        ),
      ),
    );
  }

  Widget _buildComingSoon(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ComingSoonWidget();
      },
    );
  }

  Widget _buildEveryonesWatching() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const EveryOnesWatchingWidgets();
      },
      itemCount: 10,
    );
  }
}
