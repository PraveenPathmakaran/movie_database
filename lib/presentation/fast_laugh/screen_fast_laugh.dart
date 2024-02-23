import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_db/application/fastlaugh/fast_laugh_bloc.dart';

import 'widgets/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<FastLaughBloc>().add(const FastLaughEvent.initialize());
    });
    return Scaffold(
      body: SafeArea(child: BlocBuilder<FastLaughBloc, FastLaughState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.isError) {
            return const Center(
              child: Text("Error while getting data"),
            );
          } else if (state.videosList.isEmpty) {
            return const Center(
              child: Text("Video List Empty"),
            );
          }
          return PageView(
            scrollDirection: Axis.vertical,
            children: List.generate(state.videosList.length, (index) {
              return VideoListItemInheritedWidget(
                key: Key(index.toString()),
                movieData: state.videosList[index],
                child: VideoListItem(
                  index: index,
                ),
              );
            }),
          );
        },
      )),
    );
  }
}
