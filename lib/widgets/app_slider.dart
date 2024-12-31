import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AppSlider extends StatefulWidget {
  const AppSlider({super.key, required this.images});

  final List<String> images;

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider(
          items: widget.images
              .map((e) => Image.asset(
                    e,
                    width: dim(360),
                    height: dim(157),
                    fit: BoxFit.contain,
                  ))
              .toList(),
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: false,
            viewportFraction: 1.0,
            aspectRatio: 360 / 157,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: dim(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.images.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: dim(15),
                  height: dim(1),
                  margin: EdgeInsets.symmetric(horizontal: dim(2)),
                  decoration: BoxDecoration(
                    color: _current == entry.key
                        ? Colors.black
                        : const Color(0xfff6f6f6),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
