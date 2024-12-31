import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:bingx_like_home/widgets/line.dart';
import 'package:flutter/material.dart';

class AnnonItem extends StatelessWidget {
  const AnnonItem({super.key, required this.title, required this.time});

  final String title;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: dim(18),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: dim(14),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: dim(12),
        ),
        Text(
          time,
          style: TextStyle(
            fontSize: dim(12),
            fontWeight: FontWeight.w500,
            color: const Color(0xff878787),
          ),
        ),
        SizedBox(
          height: dim(20),
        ),
        const Line(),
      ],
    );
  }
}
