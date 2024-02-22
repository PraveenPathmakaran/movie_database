import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_db/application/downloads/downloads_bloc.dart';
import 'package:movie_db/core/strings.dart';

import '../../core/colors/colors.dart';
import '../../core/constant/constant.dart';
import '../widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          )),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const <Widget>[
          kHeight10,
          _SmartDownloadsWidget(),
          kHeight10,
          Section2(),
          Section3(),
        ],
      ),
    );
  }
}

class _SmartDownloadsWidget extends StatelessWidget {
  const _SmartDownloadsWidget();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Icon(Icons.settings, color: kWhiteColor),
        kWidth10,
        Text("Smart Downloads")
      ],
    );
  }
}

class DownLoadsImageWidget extends StatelessWidget {
  const DownLoadsImageWidget({
    super.key,
    required this.imageLink,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  });
  final String imageLink;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: pi * angle / 180,
        child: Container(
          // margin: margin,
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              color: kBlackColor,
              image: DecorationImage(
                image: NetworkImage(imageLink),
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<DownloadsBloc>()
          .add(const DownloadsEvent.getDownloadsImage());
    });
    final Size size = MediaQuery.sizeOf(context);
    return Column(
      children: <Widget>[
        const Text(
          'Introducing Downloads for You',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight10,
        const Text(
          'We will download a personalised selection of \nmovie and shows for you, so there is \nalways something to watch on your device',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        kHeight10,
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return state.isLoading || state.downloads.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : SizedBox(
                    width: size.width,
                    height: size.width,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: size.width * 0.38,
                          backgroundColor: Colors.grey.withOpacity(0.5),
                        ),
                        DownLoadsImageWidget(
                          imageLink:
                              '$imageAppendUrl${state.downloads[0].posterPath}',
                          margin: const EdgeInsets.only(left: 170, top: 50),
                          angle: 25,
                          size: Size(size.width * 0.35, size.width * 0.55),
                        ),
                        DownLoadsImageWidget(
                          imageLink:
                              '$imageAppendUrl${state.downloads[1].posterPath}',
                          margin: const EdgeInsets.only(right: 170, top: 50),
                          size: Size(size.width * 0.35, size.width * 0.55),
                          angle: -25,
                        ),
                        DownLoadsImageWidget(
                          imageLink:
                              '$imageAppendUrl${state.downloads[2].posterPath}',
                          margin: const EdgeInsets.only(bottom: 50, top: 50),
                          size: Size(size.width * 0.4, size.width * 0.6),
                        ),
                      ],
                    ),
                  );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: kButtonColorBlue,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Setup',
                style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kHeight10,
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: kButtonColorWhite,
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
