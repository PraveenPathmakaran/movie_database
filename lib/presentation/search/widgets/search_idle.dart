import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constant/constant.dart';
import 'title.dart';

const imageuUrl =
    "https://images.pexels.com/photos/757889/pexels-photo-757889.jpeg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SearchTitleWidget(title: 'Top Search'),
        kHeight10,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearchItemTile(),
              separatorBuilder: (context, index) => kHeight20,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: <Widget>[
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(imageuUrl),
            fit: BoxFit.cover,
          )),
        ),
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(
            color: kWhiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )),
        const CircleAvatar(
          backgroundColor: kWhiteColor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBlackColor,
            radius: 23,
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                CupertinoIcons.play_fill,
                color: kWhiteColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
