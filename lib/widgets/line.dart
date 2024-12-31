import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dim(1),
      color: const Color(0xffF4F6F5),
      width: double.maxFinite,
    );
  }
}
