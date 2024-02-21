import 'package:flutter/material.dart';

import '../downloads/screen_downloads.dart';
import '../fast_laugh/screen_fast_laugh.dart';
import '../home/screen_home.dart';
import '../new_and_hot/screen_new_and_hot.dart';
import '../search/screen_search.dart';
import 'widgets/bottom_nav.dart';


class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    const ScreenSearch(),
    const ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: indexChangedNotifier,
          builder: (context, value, child) => _pages[value],
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
