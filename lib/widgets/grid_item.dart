import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.text, required this.image});

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xffF5F6F8),
          radius: dim(19),
          child: Center(
            child: Image.asset(
              image,
              fit: BoxFit.contain,
              width: dim(16),
            ),
          ),
        ),
        SizedBox(
          height: dim(10),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: dim(13),
            color: const Color(0xff111214),
          ),
        )
      ],
    );
  }
}
