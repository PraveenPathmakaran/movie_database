import 'package:flutter/material.dart';
import 'package:movie_db/core/constant/constant.dart';

import '../../../core/colors/colors.dart';
import '../../home/widgets/custom_button_widget.dart';
import 'video_widgets.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('FEB', style: TextStyle(fontSize: 20, color: kGreyColor)),
              Text(
                '11',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TALL GIRL 2',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -5),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          CustomButtonWidget(
                            icon: Icons.alarm,
                            title: 'Remind me',
                            iconSize: 20,
                            textSize: 12,
                          ),
                          kWidth10,
                          CustomButtonWidget(
                            icon: Icons.info,
                            title: 'Info',
                            iconSize: 20,
                            textSize: 12,
                          ),
                          kWidth10
                        ],
                      )
                    ],
                  )
                ],
              ),
              kHeight10,
              Text('Coming on Friday'),
              kHeight10,
              Text('Tall Girl 2'),
              kHeight10,
              Text(
                "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic",
                style: TextStyle(color: kGreyColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
