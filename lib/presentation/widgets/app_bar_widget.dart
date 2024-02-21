import 'package:flutter/material.dart';

import '../../core/constant/constant.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
        const Spacer(),
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
        kWidth10,
      ],
    );
  }
}
