import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:bingx_like_home/widgets/app_button.dart';
import 'package:flutter/material.dart';

class HomeFavButtons extends StatelessWidget {
  const HomeFavButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          text: 'Add Favorites',
          height: dim(46),
        ),
        SizedBox(
          height: dim(10),
        ),
        AppButton(
          text: 'Add other trading pairs',
          backgroundColor: Colors.transparent,
          height: dim(46),
          textColor: Colors.black,
        )
      ],
    );
  }
}
