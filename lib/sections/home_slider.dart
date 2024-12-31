import 'package:bingx_like_home/widgets/app_slider.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = List.generate(5, (_) => 'assets/images/slider1.png');

    return AppSlider(
      images: images,
    );
  }
}
